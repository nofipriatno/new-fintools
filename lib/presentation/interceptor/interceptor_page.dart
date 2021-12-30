import 'package:fintools/application/interceptor/interceptor_bloc.dart';
import 'package:fintools/injection.dart';
import 'package:fintools/presentation/survey/survey_login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class InterceptorPage extends HookWidget {
  const InterceptorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocProvider<InterceptorBloc>(
          create: (_) => getIt<InterceptorBloc>()
            ..add(
              const InterceptorEvent.onInitialize(),
            ),
          child: BlocConsumer<InterceptorBloc, InterceptorState>(
            builder: (context, state) => Container(),
            listener: (context, state) => state.maybeMap(
                orElse: () {},
                retrySuccess: (e) {},
                fetchSuccess: (e) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const SurveyLoginPage(),
                    ),
                  );
                }),
          ),
        ),
      ),
    );
  }
}
