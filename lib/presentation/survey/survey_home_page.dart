import 'package:fintools/application/survey/home/survey_home_bloc.dart';
import 'package:fintools/domain/core/constant/app_asset.dart';
import 'package:fintools/domain/core/constant/app_color.dart';
import 'package:fintools/domain/core/constant/app_font.dart';
import 'package:fintools/domain/core/failure/generic_failure.dart';
import 'package:fintools/domain/survey/response/survey_history_response/survey_history_response.dart';
import 'package:fintools/domain/survey/response/survey_task_list_response/survey_task_list_response.dart';
import 'package:fintools/injection.dart';
import 'package:fintools/presentation/component/app_bar/custom_app_bar.dart';
import 'package:fintools/presentation/component/dialog/custom_dialog.dart';
import 'package:fintools/presentation/component/indicator/circle_tab_indicator.dart';
import 'package:fintools/presentation/component/scaffold/custom_scaffold.dart';
import 'package:fintools/presentation/survey/survey_task_page.dart';
import 'package:fintools/utilities/i10n/l10n.dart';
import 'package:fintools/utilities/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SurveyHomePage extends HookWidget {
  const SurveyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TabController controller = useTabController(initialLength: 2);
    final user = useState<String?>(null);
    final task = useState<SurveyTask?>(null);
    final tasks = useState<List<SurveyTask?>>([]);
    final history = useState<SurveyHistoryResponse?>(null);

    return CustomScaffold.normal(
      context,
      appBar: CustomAppBar.surveyAppBar(context),
      body: BlocProvider<SurveyHomeBloc>(
          create: (_) => getIt<SurveyHomeBloc>()
            ..add(const SurveyHomeEvent.onInitialize()),
          child: BlocConsumer<SurveyHomeBloc, SurveyHomeState>(
            listener: (context, state) {
              state.maybeMap(
                  orElse: () {},
                  fetchAllLoading: (e) {
                    AppUtils.showLoading;
                  },
                  fetchAllFailed: (e) {
                    AppUtils.dismissLoading;
                    if (e.error == const GenericFailure.sessionExpired()) {
                      CustomDialog.logout(context,
                          title: I10n.current.session_expired,
                          message: I10n.current.session_expired_msg);
                    } else {
                      CustomDialog.info(
                        context,
                        title: 'Error',
                        message: e.error.toString(),
                      );
                    }
                  },
                  fetchHistorySuccess: (e) {
                    AppUtils.dismissLoading;
                    history.value = e.history;
                  },
                  fetchAllSuccess: (e) {
                    AppUtils.dismissLoading;
                    user.value = e.user?.name;
                    tasks.value = e.tasks;
                    task.value = e.upcomingTask;
                  },
                  navigateToSelectedTask: (e) {
                    AppUtils.dismissLoading;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => SurveyTaskPage(task: e.task),
                      ),
                    );
                  });
            },
            builder: (context, state) => DefaultTabController(
              length: controller.length,
              child: Column(
                children: [
                  TabBar(
                    controller: controller,
                    tabs: [
                      Tab(text: I10n.current.home),
                      Tab(text: I10n.current.history)
                    ],
                    onTap: (index) {
                      if (controller.indexIsChanging) {
                        FocusScope.of(context).unfocus();
                        if (controller.index == 0) {
                          context.read<SurveyHomeBloc>().add(
                                const SurveyHomeEvent.onInitialize(),
                              );
                        } else if (controller.index == 1) {
                          context.read<SurveyHomeBloc>().add(
                                const SurveyHomeEvent.onRefreshHistory(),
                              );
                        }
                      }
                    },
                    labelStyle: AppFont.text13Bold,
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
                        _tabOne(context,
                            user: user.value,
                            task: task.value,
                            tasks: tasks.value),
                        _tabTwo(context, history: history.value)
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }

  Widget _tabOne(BuildContext context,
      {String? user, SurveyTask? task, required List<SurveyTask?> tasks}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 33),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 19, horizontal: 45 - 33),
            child: Text(
              I10n.current.survey_greeting_user(user ?? ''),
              style: AppFont.text18Bold.copyWith(color: AppColor.blue),
            ),
          ),
          InkWell(
            onTap: () => context.read<SurveyHomeBloc>().add(
                  SurveyHomeEvent.onSelectedTask(task: task),
                ),
            borderRadius: BorderRadius.circular(10),
            child: Container(
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
                        Expanded(
                          child: Text(
                            task?.name ?? '',
                            textAlign: TextAlign.end,
                            style: AppFont.text12Bold
                                .copyWith(color: AppColor.blue),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 6),
                          child: InkWell(
                            onTap: () => AppUtils.launchUrlMap(
                                lat: task?.latitude, long: task?.longitude),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Image.asset(AppAssets.icSurveyLocation),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
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
            flex: 1,
            child: RefreshIndicator(
              onRefresh: () async => context
                  .read<SurveyHomeBloc>()
                  .add(const SurveyHomeEvent.onRefreshTask()),
              child: ListView.separated(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.only(bottom: 12),
                itemBuilder: (context, index) => InkWell(
                  onTap: () => context.read<SurveyHomeBloc>().add(
                        SurveyHomeEvent.onSelectedTask(task: tasks[index]),
                      ),
                  child: _itemTask(tasks[index]),
                ),
                itemCount: tasks.length,
                separatorBuilder: (context, index) => const SizedBox(
                  height: 15,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _tabTwo(BuildContext context,
      {required SurveyHistoryResponse? history}) {
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
                itemBuilder: (context, index) =>
                    _itemHistory(item: history?.data[index]),
                separatorBuilder: (context, index) => const SizedBox(
                      height: 15,
                    ),
                itemCount: history?.data.length ?? 0),
          )
        ],
      ),
    );
  }

  Widget _itemTask(SurveyTask? task) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              task?.name ?? '',
              style: AppFont.text11W500.copyWith(color: AppColor.gold),
            ),
            InkWell(
              onTap: () => AppUtils.launchUrlMap(
                  lat: task?.latitude, long: task?.longitude),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Image.asset(AppAssets.icSurveyLocation),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 7, 0, 7),
          child: Text(
            task?.address ?? '',
            style: AppFont.text11W500.copyWith(color: AppColor.blue),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Text(
            task?.platNumber ?? '',
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

  Widget _itemHistory({required HistoryItem? item}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              item?.name ?? '',
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
            item?.platNumber ?? '',
            style: AppFont.text11W500.copyWith(color: AppColor.blue),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 7),
          child: Text(
            AppUtils.convertToToday(date: item?.creDate ?? DateTime.now()),
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
