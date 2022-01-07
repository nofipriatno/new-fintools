import 'package:dropdown_search/dropdown_search.dart';
import 'package:fintools/domain/core/constant/app_color.dart';
import 'package:fintools/domain/core/constant/app_font.dart';
import 'package:fintools/domain/survey/local/survey_question_model.dart';
import 'package:fintools/domain/survey/response/survey_task_list_response/survey_task_list_response.dart';
import 'package:fintools/injection.dart';
import 'package:fintools/presentation/component/app_bar/custom_app_bar.dart';
import 'package:fintools/presentation/component/indicator/circle_tab_indicator.dart';
import 'package:fintools/presentation/component/scaffold/custom_scaffold.dart';
import 'package:fintools/utilities/i10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fintools/application/survey/task/survey_task_bloc.dart';

class SurveyTaskPage extends HookWidget {
  final SurveyTask? task;

  const SurveyTaskPage({Key? key, this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TabController controller = useTabController(initialLength: 5);
    List<QuestionAnswerModel> questions = [];

    return BlocProvider<SurveyTaskBloc>(
      create: (_) => getIt<SurveyTaskBloc>()
        ..add(
          SurveyTaskEvent.onInitialize(taskId: task?.taskId),
        ),
      child: BlocConsumer<SurveyTaskBloc, SurveyTaskState>(
        listener: (context, state) {
          state.maybeMap(
              orElse: () {},
              checkClientSuccess: (e) {
                questions = e.questions;
              });
        },
        builder: (context, state) => CustomScaffold.normal(
          context,
          appBar: CustomAppBar.surveyAppBar(context, title: I10n.current.task),
          resize: true,
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
                  indicator:
                      CircleTabIndicator(color: AppColor.gold, radius: 3),
                ),
                Flexible(
                  child: TabBarView(
                    controller: controller,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Container(),
                      ListView.separated(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        itemBuilder: (context, index) =>
                            _quisionerItem(questions[index]),
                        separatorBuilder: (BuildContext context, int index) =>
                            const SizedBox(height: 10),
                        itemCount: questions.length,
                      ),
                      Container(),
                      Container(),
                      Container(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _quisionerItem(QuestionAnswerModel item) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          item.question ?? '',
          style: AppFont.text12W300.copyWith(color: AppColor.blue),
        ),
        item.search?.items?.isEmpty == true
            ? TextField(controller: item.controller)
            : DropdownSearch<String>(
                mode: Mode.MENU,
                dropdownSearchDecoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColor.itemSurveyDivider),
                    )),
                items: item.search?.items,
                onChanged: (e) {
                  // TODO : save value here
                },
                selectedItem: item.search?.value),
      ],
    );
  }
}
