import 'package:fintools/domain/core/constant/app_asset.dart';
import 'package:fintools/domain/core/constant/app_color.dart';
import 'package:fintools/domain/core/constant/app_font.dart';
import 'package:fintools/injection.dart';
import 'package:fintools/presentation/component/button/custom_button.dart';
import 'package:fintools/presentation/component/scaffold/custom_scaffold.dart';
import 'package:fintools/presentation/component/snack_bar/custom_snack_bar.dart';
import 'package:fintools/presentation/component/text_field/custom_text_field.dart';
import 'package:fintools/presentation/survey/survey_home_page.dart';
import 'package:fintools/utilities/i10n/l10n.dart';
import 'package:fintools/utilities/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fintools/application/survey/login/survey_login_bloc.dart';

class SurveyLoginPage extends HookWidget {
  const SurveyLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _nikController = useTextEditingController();
    final _passwordController = useTextEditingController();
    bool _isLoading = false;

    return WillPopScope(
        child: CustomScaffold.normal(
          context,
          body: BlocProvider<SurveyLoginBloc>(
            create: (_) => getIt<SurveyLoginBloc>(),
            child: BlocConsumer<SurveyLoginBloc, SurveyLoginState>(
              listener: (context, state) {
                state.map(
                    initial: (e) {},
                    loading: (e) {
                      _isLoading = true;
                      AppUtils.showLoading;
                    },
                    loginSuccess: (e) {
                      _isLoading = false;
                      AppUtils.dismissLoading;
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const SurveyHomePage()),
                          (route) => false);
                    },
                    loginFailed: (e) {
                      _isLoading = false;
                      AppUtils.dismissLoading;
                      CustomSnackBar.showNormal(context,
                          message: 'Failed to Login');
                    });
              },
              builder: (context, state) {
                return Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          alignment: Alignment.topCenter,
                          image: AssetImage(AppAssets.imagesLoginBackground))),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(40, 50, 40, 10),
                            width: double.infinity,
                            child: Text(
                              I10n.current.login_greeting1,
                              style: AppFont.text20W300
                                  .copyWith(color: AppColor.white),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(40, 0, 40, 10),
                            width: double.infinity,
                            child: Text(
                              I10n.current.login_greeting2,
                              style: AppFont.text13W300
                                  .copyWith(color: AppColor.white),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: ScreenUtil().screenHeight * 0.1,
                      ),
                      CustomTextField.underline(
                          controller: _nikController, title: I10n.current.nik),
                      CustomTextField.underline(
                          controller: _passwordController,
                          title: I10n.current.password,
                          obscure: true),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 70),
                        child: Text(
                          I10n.current.forget_password_mark,
                          style:
                              AppFont.text13W300.copyWith(color: AppColor.blue),
                        ),
                      ),
                      SizedBox(
                        width: ScreenUtil().screenWidth * 0.6,
                        child:
                            CustomButton.normalButton(I10n.current.login, () {
                          context.read<SurveyLoginBloc>().add(
                                SurveyLoginEvent.onLogin(
                                    nik: _nikController.text,
                                    password: _passwordController.text),
                              );
                        }),
                      )
                    ],
                  ),
                );
              },
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
