import 'package:fintools/domain/core/constant/app_asset.dart';
import 'package:fintools/domain/core/constant/app_color.dart';
import 'package:fintools/domain/core/constant/app_font.dart';
import 'package:fintools/presentation/component/button/custom_button.dart';
import 'package:fintools/presentation/component/indicator/custom_shape_one.dart';
import 'package:fintools/presentation/component/scaffold/custom_scaffold.dart';
import 'package:fintools/presentation/survey/survey_home_page.dart';
import 'package:fintools/utilities/i10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SurveyLoginPage extends HookWidget {
  const SurveyLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold.normal(
      context,
      body: Container(
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
                    style: AppFont.text20W300.copyWith(color: AppColor.white),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(40, 0, 40, 10),
                  width: double.infinity,
                  child: Text(
                    I10n.current.login_greeting2,
                    style: AppFont.text13W300.copyWith(color: AppColor.white),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Center(
                child: CustomButton.normalButton(I10n.current.login, () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) => const SurveyHomePage()),
                      (route) => false);
                }),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _greetings() {
    return Stack(
      children: <Widget>[
        BottomShape(),
        Positioned(
          top: 30,
          child: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    I10n.current.login_greeting1,
                    style: AppFont.text18Bold.copyWith(color: AppColor.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      I10n.current.login_greeting2,
                      style:
                          AppFont.text14Normal.copyWith(color: AppColor.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
