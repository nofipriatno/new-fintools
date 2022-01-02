import 'package:fintools/domain/core/constant/app_color.dart';
import 'package:fintools/domain/core/constant/app_font.dart';
import 'package:fintools/presentation/component/indicator/circle_tab_indicator.dart';
import 'package:fintools/presentation/component/scaffold/custom_scaffold.dart';
import 'package:fintools/utilities/i10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SurveyHomePage extends HookWidget {
  const SurveyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TabController controller = useTabController(initialLength: 3);

    return CustomScaffold.normal(
      context,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              child: const Text('AH'),
              backgroundColor: AppColor.gold,
              radius: 30,
            ),
          )
        ],
      ),
      body: DefaultTabController(
        length: controller.length,
        child: Column(
          children: [
            TabBar(
              controller: controller,
              tabs: [
                Tab(text: I10n.current.home),
                Tab(text: I10n.current.history),
                Tab(text: I10n.current.task),
              ],
              labelStyle: AppFont.text13Bold,
              labelColor: AppColor.gold,
              unselectedLabelColor: AppColor.blue,
              indicator: CircleTabIndicator(color: AppColor.gold, radius: 3),
            ),
            Flexible(
              child: TabBarView(
                controller: controller,
                physics: const NeverScrollableScrollPhysics(),
                children: [_tabOne(), _tabTwo(), _tabThree()],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _tabOne() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 33),
      color: AppColor.blue,
      child: Column(
        children: [Text(I10n.current.survey_greeting_user('Dhyanissa'))],
      ),
    );
  }

  Widget _tabTwo() {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 45),
        color: AppColor.darkGrey);
  }

  Widget _tabThree() {
    return Container(color: AppColor.transparent);
  }
}
