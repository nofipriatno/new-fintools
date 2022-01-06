import 'package:fintools/application/interceptor/interceptor_bloc.dart';
import 'package:fintools/injection.dart';
import 'package:fintools/presentation/component/scaffold/custom_scaffold.dart';
import 'package:fintools/presentation/survey/survey_home_page.dart';
import 'package:fintools/presentation/survey/survey_login_page.dart';
import 'package:fintools/utilities/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class InterceptorPage extends HookWidget {
  final bool? isLogin;

  const InterceptorPage({Key? key, this.isLogin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _isLoading = false;

    return WillPopScope(
        child: CustomScaffold.normal(
          context,
          body: BlocProvider<InterceptorBloc>(
            create: (_) => getIt<InterceptorBloc>()
              ..add(
                const InterceptorEvent.onInitialize(),
              ),
            child: BlocConsumer<InterceptorBloc, InterceptorState>(
              builder: (context, state) => Container(),
              listener: (context, state) => state.maybeMap(
                  orElse: () {},
                  loading: (e) {
                    _isLoading = true;
                    AppUtils.showLoading;
                  },
                  retrySuccess: (e) {},
                  fetchSuccess: (e) {
                    _isLoading = false;
                    AppUtils.dismissLoading;
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => isLogin == true
                            ? const SurveyHomePage()
                            : const SurveyLoginPage(),
                      ),
                    );
                  }),
            ),
          ),
        ),
        onWillPop: () {
          if (!_isLoading) {
            AppUtils.dismissLoading;
          }
          return Future.value(!_isLoading ? true : false);
        });
  }
}
