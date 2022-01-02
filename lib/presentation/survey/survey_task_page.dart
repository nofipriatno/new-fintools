import 'package:fintools/domain/core/constant/app_color.dart';
import 'package:fintools/presentation/component/app_bar/custom_app_bar.dart';
import 'package:fintools/presentation/component/scaffold/custom_scaffold.dart';
import 'package:fintools/utilities/i10n/l10n.dart';
import 'package:flutter/material.dart';

class SurveyTaskPage extends StatelessWidget {
  const SurveyTaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold.normal(
      context,
      appBar: CustomAppBar.surveyAppBar(context, title: I10n.current.task),
      body: Container(
        color: AppColor.gold,
      ),
    );
  }
}
