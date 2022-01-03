import 'package:fintools/domain/core/constant/app_color.dart';
import 'package:fintools/domain/core/constant/app_font.dart';
import 'package:fintools/presentation/component/app_bar/custom_app_bar.dart';
import 'package:fintools/presentation/component/indicator/circle_tab_indicator.dart';
import 'package:fintools/presentation/component/scaffold/custom_scaffold.dart';
import 'package:fintools/utilities/i10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SurveyTaskPage extends HookWidget {
  const SurveyTaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TabController controller = useTabController(initialLength: 5);

    return CustomScaffold.normal(
      context,
      appBar: CustomAppBar.surveyAppBar(context, title: I10n.current.task),
      body: DefaultTabController(
        length: controller.length,
        child: Column(
          children: [
            TabBar(
              controller: controller,
              tabs: [
                Tab(text: I10n.current.client),
                Tab(text: I10n.current.quisioner),
                Tab(text: I10n.current.asset),
                Tab(text: I10n.current.document),
                Tab(text: I10n.current.process),
              ],
              isScrollable: true,
              labelStyle: AppFont.text11Bold,
              labelColor: AppColor.gold,
              unselectedLabelColor: AppColor.blue,
              indicator: CircleTabIndicator(color: AppColor.gold, radius: 3),
            ),
            Flexible(
              child: TabBarView(
                controller: controller,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Container(),
                  Container(),
                  Container(),
                  Container(),
                  Container(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
