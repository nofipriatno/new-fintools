import 'package:dropdown_search/dropdown_search.dart';
import 'package:fintools/domain/core/constant/app_color.dart';
import 'package:fintools/domain/core/constant/app_enum.dart';
import 'package:fintools/domain/core/constant/app_font.dart';
import 'package:fintools/domain/survey/local/survey_client_model.dart';
import 'package:fintools/domain/survey/local/survey_question_model.dart';
import 'package:fintools/domain/survey/response/survey_task_list_response/survey_task_list_response.dart';
import 'package:fintools/infrastructure/core/database.dart';
import 'package:fintools/injection.dart';
import 'package:fintools/presentation/component/app_bar/custom_app_bar.dart';
import 'package:fintools/presentation/component/indicator/circle_tab_indicator.dart';
import 'package:fintools/presentation/component/scaffold/custom_scaffold.dart';
import 'package:fintools/presentation/component/text_field/custom_text_field.dart';
import 'package:fintools/utilities/i10n/l10n.dart';
import 'package:fintools/utilities/utilities.dart';
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
    final questions = useState<List<QuestionAnswerModel>>([]);
    final assets = useState<List<FormUploadData>>([]);
    final documents = useState<List<FormUploadData>>([]);
    final clients = useState<List<SurveyClientModel>>([]);
    final zipcode = useState<List<ZipcodeData>>([]);

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
                questions.value = e.questions;
                documents.value = e.document;
                assets.value = e.assets;
                clients.value = e.client;
                zipcode.value = e.zipcode;
              },
              selectChoiceSuccess: (e) {
                var item = questions.value
                    .firstWhere((element) => element.id == e.item.id);
                final index = questions.value.indexOf(item);
                item = item.copyWith(search: e.item);
                questions.value.removeAt(index);
                questions.value.insert(index, item);
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
                      ListView.separated(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        itemBuilder: (context, index) => _itemClient(
                            context, zipcode.value,
                            item: clients.value[index], items: clients.value),
                        separatorBuilder: (BuildContext context, int index) =>
                            const SizedBox(height: 10),
                        itemCount: clients.value.length,
                      ),
                      ListView.separated(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        itemBuilder: (context, index) => _itemQuisioner(context,
                            item: questions.value[index],
                            taskId: task?.taskId ?? ''),
                        separatorBuilder: (BuildContext context, int index) =>
                            const SizedBox(height: 10),
                        itemCount: questions.value.length,
                      ),
                      ListView.separated(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        itemBuilder: (context, index) =>
                            _itemDocument(assets.value[index]),
                        separatorBuilder: (BuildContext context, int index) =>
                            const SizedBox(height: 10),
                        itemCount: assets.value.length,
                      ),
                      ListView.separated(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        itemBuilder: (context, index) =>
                            _itemDocument(documents.value[index]),
                        separatorBuilder: (BuildContext context, int index) =>
                            const SizedBox(height: 10),
                        itemCount: assets.value.length,
                      ),
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

  Widget _itemQuisioner(BuildContext context,
      {required QuestionAnswerModel item, required String taskId}) {
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
                  context.read<SurveyTaskBloc>().add(
                        SurveyTaskEvent.onChoiceSelect(
                            item: item.search!,
                            choice: e ?? '',
                            taskId: taskId),
                      );
                },
                selectedItem: item.search?.value),
        if (item.search?.value?.contains(',') == true)
          TextField(controller: item.controller)
      ],
    );
  }

  Widget _itemDocument(FormUploadData item) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                item.name,
                style: AppFont.text11Bold.copyWith(color: AppColor.gold),
              ),
            ),
            const Icon(Icons.arrow_drop_down_sharp)
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Container(
            height: 1,
            width: double.infinity,
            color: AppColor.itemSurveyDivider,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  SizedBox(
                    width: 50,
                    child: Text(
                      I10n.current.filename,
                      style: AppFont.text8Bold.copyWith(color: AppColor.blue),
                    ),
                  ),
                  SizedBox(
                    width: 90,
                    child: Text(
                      I10n.current.date,
                      style: AppFont.text8Bold.copyWith(color: AppColor.blue),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    width: 60,
                    child: Text(
                      I10n.current.time,
                      style: AppFont.text8Bold.copyWith(color: AppColor.blue),
                      textAlign: TextAlign.center,
                      // textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: AppColor.cardBackground,
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(20),
              child: Column(
                children: List.generate(
                  item.count,
                  (index) => Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColor.darkGrey,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        height: 50,
                        width: 50,
                      ),
                      SizedBox(
                        width: 90,
                        child: Text(
                          I10n.current.date,
                          style:
                              AppFont.text8W300.copyWith(color: AppColor.blue),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        width: 60,
                        child: Text(
                          I10n.current.time,
                          style:
                              AppFont.text8W300.copyWith(color: AppColor.blue),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }

  Widget _itemClient(BuildContext context, List<ZipcodeData> zipcode,
      {required SurveyClientModel item,
      required List<SurveyClientModel> items}) {
    if (item.clientFormType == ClientFormType.zipcode) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 38),
        child: DropdownSearch<ZipcodeData>(
          mode: Mode.BOTTOM_SHEET,
          showSearchBox: true,
          dropdownSearchDecoration: InputDecoration(
              hintText: item.title ?? '',
              hintStyle: AppFont.text14W300.copyWith(color: AppColor.blue),
              contentPadding: EdgeInsets.zero,
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColor.itemSurveyDivider),
              )),
          items: zipcode,
          onFind: (data) async => zipcode
              .where((element) =>
                  element.postCode.contains(data ?? '') ||
                  element.district.contains(data ?? '') ||
                  element.subDistrict.contains(data ?? '') ||
                  element.city.contains(data ?? ''))
              .toList(),
          itemAsString: (item) =>
              '${item?.postCode} ${item?.district} ${item?.subDistrict}',
          onChanged: (select) {
            item.controller?.text = select?.postCode ?? '';
            var district = items.firstWhere((element) =>
                element.title == I10n.current.district &&
                element.clientFormType == ClientFormType.subZipcode);
            var subDistrict = items.firstWhere((element) =>
                element.title == I10n.current.sub_district &&
                element.clientFormType == ClientFormType.subZipcode);
            district.controller?.text = select?.district ?? '';
            subDistrict.controller?.text = select?.subDistrict ?? '';
          },
        ),
      );
    } else {
      return CustomTextField.underline(
          controller: item.controller!,
          title: item.title ?? '',
          onTap: item.clientFormType?.index == ClientFormType.date.index
              ? () => showCalendar(context, controller: item.controller!)
              : null,
          enable:
              !(item.clientFormType?.index == ClientFormType.subZipcode.index),
          readOnly:
              item.clientFormType?.index == ClientFormType.subZipcode.index ||
                  item.clientFormType?.index == ClientFormType.date.index,
          inputType: getInputType(item.clientFormType!));
    }
  }

  TextInputType getInputType(ClientFormType type) {
    switch (type) {
      case ClientFormType.date:
        return TextInputType.datetime;
      case ClientFormType.name:
        return TextInputType.name;
      case ClientFormType.nik:
        return TextInputType.number;
      case ClientFormType.address:
        return TextInputType.streetAddress;
      case ClientFormType.zipcode:
        return TextInputType.number;
      case ClientFormType.subZipcode:
        return TextInputType.number;
      case ClientFormType.number:
        return TextInputType.number;
      case ClientFormType.phone:
        return TextInputType.phone;
    }
  }

  void showCalendar(BuildContext context,
      {required TextEditingController controller}) async {
    final date = await showDatePicker(
        context: context,
        firstDate: DateTime(1900),
        initialDate: DateTime.now(),
        lastDate: DateTime.now());

    if (date != null) {
      controller.text = AppUtils.formatDate(date, format: 'dd/MM/yyyy')!;
    }
  }
}
