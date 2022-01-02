import 'package:fintools/presentation/component/button/custom_button.dart';
import 'package:fintools/presentation/component/scaffold/custom_scaffold.dart';
import 'package:fintools/presentation/survey/survey_home_page.dart';
import 'package:fintools/utilities/i10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SurveyLoginPage extends HookWidget {
  const SurveyLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold.normal(context,
        body: Center(
          child: CustomButton.normalButton(I10n.current.login, () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => const SurveyHomePage()),
                (route) => false);
          }),
        ));
  }
}
