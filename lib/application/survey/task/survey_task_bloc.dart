import 'package:bloc/bloc.dart';
import 'package:fintools/domain/core/constant/app_model.dart';
import 'package:fintools/domain/core/failure/generic_failure.dart';
import 'package:fintools/domain/core/interface/i_database.dart';
import 'package:fintools/domain/core/interface/i_storage.dart';
import 'package:fintools/domain/survey/interface/i_survey.dart';
import 'package:fintools/domain/survey/interface/i_user_survey.dart';
import 'package:fintools/domain/survey/local/survey_client_model.dart';
import 'package:fintools/domain/survey/local/survey_data_model.dart';
import 'package:fintools/domain/survey/local/survey_question_model.dart';
import 'package:fintools/domain/survey/local/survey_search_model.dart';
import 'package:fintools/domain/survey/response/survey_task_list_response/survey_task_list_response.dart';
import 'package:fintools/infrastructure/core/database.dart';
import 'package:fintools/utilities/utilities.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'survey_task_bloc.freezed.dart';

part 'survey_task_event.dart';

part 'survey_task_state.dart';

@injectable
class SurveyTaskBloc extends Bloc<SurveyTaskEvent, SurveyTaskState> {
  final ISurvey _survey;
  final IDatabase _database;
  final IStorage _storage;
  final IUserSurvey _userSurvey;

  SurveyTaskBloc(this._survey, this._database, this._storage, this._userSurvey)
      : super(const _Initial()) {
    on<SurveyTaskEvent>((event, emit) async {
      await event.map(onInitialize: (e) async {
        emit(const _Loading());
        final questioner = await _database.getSurveyQuisioner();
        final box = await _storage.openBox(StorageConstants.dataSurvey);
        final questionDB = questioner
            .map(
                (q) => AppUtils.splitQuestion(q, e.taskId ?? '', _storage, box))
            .toList();
        List<QuestionAnswerModel> question = [];
        List<SurveyClientModel> client = [];
        List<SurveyDataModel> surveyData = [];

        for (QuestionAnswerModel element in questionDB) {
          String key = e.taskId! + element.id!;
          var getAnswer =
              _storage.getString(box, key: key + SurveyConstant.question.name);
          var getChoice =
              _storage.getJson(box, key: key + SurveyConstant.choice.name);
          element.controller?.text = getAnswer ?? '';
          if (getChoice != null) {
            element = element.copyWith(search: SearchModel.fromJson(getChoice));
          }
          question.add(element);
        }

        final document = await _database.getSurveyForm();

        for (FormUploadData element in document) {
          String key = e.taskId! + element.type + element.id;
          for (var i = 0; i < element.count; i++) {
            final data = _storage.getJson(box, key: key + i.toString());
            if (data != null) surveyData.add(SurveyDataModel.fromJson(data));
          }
        }

        final picDocument = document
            .where((element) => element.code.toUpperCase().contains('PIC'))
            .toList();
        final dpkDocument = document
            .where((element) => element.code.toUpperCase().contains('DPK'))
            .toList();

        final zipcode = await _database.getSurveyZipcode();
        final clientDB = AppModel.clientForm;

        for (SurveyClientModel element in clientDB) {
          TextEditingController controller = TextEditingController();
          element = element.copyWith(controller: controller);
          String key = e.taskId! + element.id!;
          var getAnswer =
              _storage.getString(box, key: key + SurveyConstant.client.name);
          element.controller?.text = getAnswer ?? '';
          element.controller?.addListener(() {
            _storage.putString(box,
                key: '${e.taskId}${element.id}${SurveyConstant.client.name}',
                value: element.controller?.text ?? '');
          });

          client.add(element);
        }

        emit(
          _CheckClientSuccess(
              questions: question,
              document: dpkDocument,
              assets: picDocument,
              client: client,
              zipcode: zipcode,
              data: surveyData),
        );
      }, onChoiceSelect: (e) async {
        emit(const _Initial());
        SearchModel model = SearchModel(
            id: e.item.id,
            title: e.item.title,
            items: e.item.items,
            value: e.choice);
        final box = await _storage.openBox(StorageConstants.dataSurvey);
        _storage.setJson(box,
            key: e.taskId + e.item.id! + SurveyConstant.choice.name,
            object: model.toJson());
        emit(_SelectChoiceSuccess(item: model, choice: e.choice));
      }, onFileSelect: (e) async {
        emit(const _Initial());
        final box = await _storage.openBox(StorageConstants.dataSurvey);
        SurveyDataModel data = SurveyDataModel(
            id: e.id.id,
            formId: e.id.idForm,
            formName: e.id.formName,
            index: e.index,
            filePath: e.path,
            dateTime: DateTime.now(),
            extension: e.extension);
        await _storage.setJson(box,
            key: e.taskId + e.id.type + e.id.id + e.index.toString(),
            object: data.toJson());
        emit(_SelectFileSuccess(data: data));
      }, onSubmitSurvey: (e) async {
        emit(const _Loading());
        final postOrFailure = await _userSurvey.postSurveyData(
          client: e.client,
          question: e.question,
          data: e.data,
          task: e.task,
        );

        postOrFailure.fold(
          (failure) => emit(_SubmitFailed(failure: failure)),
          (success) => emit(_SubmitSuccess(task: e.task)),
        );
      }, onProcessCheck: (e) async {
        emit(const _Loading());
        final client = e.client.firstWhereOrNull(
            (element) => element.controller?.text.isEmpty == true);

        final doc = e.formData
            .where((element) => element.code.contains('DPK'))
            .toList();

        final asset = e.formData
            .where((element) => element.code.contains('PIC'))
            .toList();

        int docItem = 0;
        int assetItem = 0;
        for (SurveyDataModel item in e.data) {
          final docCheck = doc
              .firstWhereOrNull((element) => element.formName == item.formName);
          final assetCheck = asset
              .firstWhereOrNull((element) => element.formName == item.formName);
          if (docCheck != null) docItem += 1;
          if (assetCheck != null) assetItem += 1;
        }

        emit(
          _CheckCompletedData(
              assetsCompleted: assetItem == asset.length,
              questionCompleted: false,
              documentsCompleted: docItem == doc.length,
              clientCompleted: client == null),
        );
      });
    });
  }
}
