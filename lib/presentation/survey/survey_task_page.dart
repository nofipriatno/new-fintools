import 'dart:io';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:file_picker/file_picker.dart';
import 'package:fintools/domain/core/constant/app_color.dart';
import 'package:fintools/domain/core/constant/app_enum.dart';
import 'package:fintools/domain/core/constant/app_font.dart';
import 'package:fintools/domain/core/constant/app_string.dart';
import 'package:fintools/domain/survey/local/survey_client_model.dart';
import 'package:fintools/domain/survey/local/survey_data_model.dart';
import 'package:fintools/domain/survey/local/survey_question_model.dart';
import 'package:fintools/domain/survey/response/survey_task_list_response/survey_task_list_response.dart';
import 'package:fintools/infrastructure/core/database.dart';
import 'package:fintools/injection.dart';
import 'package:fintools/presentation/component/app_bar/custom_app_bar.dart';
import 'package:fintools/presentation/component/button/custom_button.dart';
import 'package:fintools/presentation/component/dialog/custom_dialog.dart';
import 'package:fintools/presentation/component/indicator/circle_tab_indicator.dart';
import 'package:fintools/presentation/component/scaffold/custom_scaffold.dart';
import 'package:fintools/presentation/component/text_field/custom_text_field.dart';
import 'package:fintools/utilities/i10n/l10n.dart';
import 'package:fintools/utilities/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fintools/application/survey/task/survey_task_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

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
    final surveyData = useState<List<SurveyDataModel>>([]);

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
                surveyData.value = e.data;
              },
              selectChoiceSuccess: (e) {
                var item = questions.value
                    .firstWhere((element) => element.id == e.item.id);
                final index = questions.value.indexOf(item);
                item = item.copyWith(search: e.item);
                questions.value.removeAt(index);
                questions.value.insert(index, item);
              },
              selectFileSuccess: (e) {
                if (surveyData.value.isEmpty) {
                  surveyData.value.add(e.data);
                } else {
                  final indexData = surveyData.value.indexWhere((element) =>
                      element.id == e.data.id && element.index == e.data.index);
                  if (indexData == -1) {
                    surveyData.value.add(e.data);
                  } else {
                    surveyData.value.removeAt(indexData);
                    surveyData.value.insert(indexData, e.data);
                  }
                }
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
                        itemBuilder: (context, index) => _itemDocument(
                            context, assets.value[index],
                            local: surveyData.value),
                        separatorBuilder: (BuildContext context, int index) =>
                            const SizedBox(height: 10),
                        itemCount: assets.value.length,
                      ),
                      ListView.separated(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        itemBuilder: (context, index) => _itemDocument(
                            context, documents.value[index],
                            local: surveyData.value),
                        separatorBuilder: (BuildContext context, int index) =>
                            const SizedBox(height: 10),
                        itemCount: assets.value.length,
                      ),
                      _processCompleted()
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

  Widget _processCompleted() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        I10n.current.client,
                        style:
                            AppFont.text13Bold.copyWith(color: AppColor.gold),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColor.blue,
                          borderRadius: BorderRadius.circular(80),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          child: Text(
                            I10n.current.completed,
                            style: AppFont.text11W500
                                .copyWith(color: AppColor.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        I10n.current.quisioner,
                        style:
                            AppFont.text13Bold.copyWith(color: AppColor.gold),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColor.blue,
                          borderRadius: BorderRadius.circular(80),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          child: Text(
                            I10n.current.completed,
                            style: AppFont.text11W500
                                .copyWith(color: AppColor.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        I10n.current.asset,
                        style:
                            AppFont.text13Bold.copyWith(color: AppColor.gold),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColor.blue,
                          borderRadius: BorderRadius.circular(80),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          child: Text(
                            I10n.current.completed,
                            style: AppFont.text11W500
                                .copyWith(color: AppColor.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        I10n.current.document,
                        style:
                            AppFont.text13Bold.copyWith(color: AppColor.gold),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColor.blue,
                          borderRadius: BorderRadius.circular(80),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          child: Text(
                            I10n.current.completed,
                            style: AppFont.text11W500
                                .copyWith(color: AppColor.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            child: CustomButton.normalButton(I10n.current.submit, () {}),
            width: ScreenUtil().screenWidth,
          )
        ],
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

  Widget _itemDocument(BuildContext context, FormUploadData item,
      {required List<SurveyDataModel> local}) {
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
                  (index) {
                    SurveyDataModel? data;
                    final haveItem = local.any((element) =>
                        element.id == item.id && element.index == index);
                    if (haveItem) {
                      data = local.firstWhere((element) =>
                          element.id == item.id && element.index == index);
                    }
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: AppColor.darkGrey,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            height: 50,
                            width: 50,
                            child: data != null ? _showThumbnail(data) : null,
                          ),
                          SizedBox(
                            width: 90,
                            child: Text(
                              data == null
                                  ? I10n.current.date
                                  : AppUtils.formatDate(data.dateTime!,
                                      format: 'dd/MM/yyyy')!,
                              style: AppFont.text8W300
                                  .copyWith(color: AppColor.blue),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            width: 60,
                            child: Text(
                              data == null
                                  ? I10n.current.time
                                  : AppUtils.formatDate(data.dateTime!,
                                      format: 'HH.mm')!,
                              style: AppFont.text8W300
                                  .copyWith(color: AppColor.blue),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(child: Container()),
                                InkWell(
                                  onTap: () => fileAction(context,
                                      task: task, item: item, index: index),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: Icon(item.type == AppString.document
                                        ? Icons.document_scanner
                                        : Icons.camera),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
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

  Widget _showThumbnail(SurveyDataModel data) {
    if (data.extension?.toLowerCase() == 'png' ||
        data.extension?.toLowerCase() == 'jpg' ||
        data.extension?.toLowerCase() == 'jpeg') {
      return Image.file(
        File(data.filePath!),
        height: 50,
        width: 50,
        fit: BoxFit.fill,
      );
    } else {
      return const Center(
        child: Icon(Icons.picture_as_pdf_outlined),
      );
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

  void fileAction(BuildContext context,
      {required SurveyTask? task,
      required FormUploadData item,
      required int index}) async {
    final _imagePicker = ImagePicker();
    int? type;
    type =
        item.type == AppString.document ? await CustomDialog.file(context) : 1;
    if (type == null) return;
    if (type == 1) {
      final image = await _imagePicker.pickImage(
          source: ImageSource.camera, imageQuality: 60);
      if(image == null) return;
      context.read<SurveyTaskBloc>().add(SurveyTaskEvent.onFileSelect(
          path: image.path,
          id: item,
          index: index,
          extension: 'png',
          taskId: task?.taskId ?? ''));
    } else if (type == 2) {
      final file = await FilePicker.platform.pickFiles(
          type: FileType.custom, allowedExtensions: ['pdf', 'doc', 'docx']);
      if(file == null) return;
      context.read<SurveyTaskBloc>().add(SurveyTaskEvent.onFileSelect(
          path: file.files.first.path,
          id: item,
          index: index,
          extension: file.files.first.extension,
          taskId: task?.taskId ?? ''));
    } else if (type == 3) {
      final file = await FilePicker.platform.pickFiles(type: FileType.image);
      if(file == null) return;
      context.read<SurveyTaskBloc>().add(SurveyTaskEvent.onFileSelect(
          path: file.files.first.path,
          id: item,
          index: index,
          extension: file.files.first.extension,
          taskId: task?.taskId ?? ''));
    }
  }
}
