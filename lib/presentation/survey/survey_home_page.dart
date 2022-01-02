import 'package:fintools/domain/core/constant/app_asset.dart';
import 'package:fintools/domain/core/constant/app_color.dart';
import 'package:fintools/domain/core/constant/app_font.dart';
import 'package:fintools/presentation/component/indicator/circle_tab_indicator.dart';
import 'package:fintools/presentation/component/scaffold/custom_scaffold.dart';
import 'package:fintools/utilities/i10n/l10n.dart';
import 'package:fintools/utilities/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 19, horizontal: 45 - 33),
            child: Text(
              I10n.current.survey_greeting_user('Dhyanissa'),
              style: AppFont.text18Bold.copyWith(color: AppColor.blue),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColor.cardBackground),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: ScreenUtil().screenWidth / 3,
                  child: Text(
                    I10n.current.upcoming_survey,
                    style: AppFont.text18Bold.copyWith(color: AppColor.gold),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Suhartono Herman',
                        style:
                            AppFont.text12Bold.copyWith(color: AppColor.blue),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Image.asset(AppAssets.icSurveyLocation),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 33, horizontal: 45 - 33),
            child: Text(
              I10n.current.task,
              style: AppFont.text18Bold.copyWith(color: AppColor.blue),
            ),
          ),
          Expanded(
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(bottom: 12),
              itemBuilder: (context, index) => _itemTask(
                  name: 'Name $index',
                  platNumber: 'F $index$index$index$index XX'),
              itemCount: 10,
              separatorBuilder: (context, index) => const SizedBox(
                height: 15,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _tabTwo() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 45),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 35),
            child: Text(
              I10n.current.task_completed,
              style: AppFont.text12W900.copyWith(color: AppColor.blue),
            ),
          ),
          Flexible(
            child: ListView.separated(
                padding: const EdgeInsets.only(bottom: 20),
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => _itemHistory(
                      name: 'Name $index',
                      platNumber: 'F $index$index$index$index XX',
                      taskCompleted: DateTime.now().subtract(
                        Duration(days: index),
                      ),
                    ),
                separatorBuilder: (context, index) => const SizedBox(
                      height: 15,
                    ),
                itemCount: 10),
          )
        ],
      ),
    );
  }

  Widget _tabThree() {
    return Container(color: AppColor.transparent);
  }

  Widget _itemTask({required String name, required String platNumber}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: AppFont.text11W500.copyWith(color: AppColor.gold),
            ),
            Icon(
              Icons.arrow_drop_down_sharp,
              color: AppColor.gold,
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 7, 0, 15),
          child: Text(
            platNumber,
            style: AppFont.text11W500.copyWith(color: AppColor.blue),
          ),
        ),
        Container(
          width: double.infinity,
          height: 2,
          color: AppColor.itemSurveyDivider,
        )
      ],
    );
  }

  Widget _itemHistory(
      {required String name,
      required String platNumber,
      required DateTime taskCompleted}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: AppFont.text11W500.copyWith(color: AppColor.gold),
            ),
            Icon(
              Icons.arrow_drop_down_sharp,
              color: AppColor.gold,
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 7, 0, 7),
          child: Text(
            platNumber,
            style: AppFont.text11W500.copyWith(color: AppColor.blue),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 7),
          child: Text(
            AppUtils.convertToToday(date: taskCompleted),
            style: AppFont.text10Normal.copyWith(color: AppColor.grey),
          ),
        ),
        Container(
          width: double.infinity,
          height: 2,
          color: AppColor.itemSurveyDivider,
        )
      ],
    );
  }
}
