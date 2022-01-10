import 'package:bloc/bloc.dart';
import 'package:fintools/domain/core/constant/app_model.dart';
import 'package:fintools/domain/core/interface/i_database.dart';
import 'package:fintools/domain/core/interface/i_storage.dart';
import 'package:fintools/domain/survey/interface/i_survey.dart';
import 'package:fintools/domain/survey/local/survey_client_model.dart';
import 'package:fintools/domain/survey/local/survey_question_model.dart';
import 'package:fintools/domain/survey/local/survey_search_model.dart';
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

  SurveyTaskBloc(this._survey, this._database, this._storage)
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
        final picDocument = document
            .where((element) => element.code.toUpperCase().contains('PIC'))
            .toList();
        final dpkDocument = document
            .where((element) => element.code.toUpperCase().contains('DPK'))
            .toList();

        final zipcode = await _database.getSurveyZipcode();
        final client = AppModel.clientForm;

        emit(
          _CheckClientSuccess(
              questions: question,
              document: dpkDocument,
              assets: picDocument,
              client: client,
              zipcode: zipcode),
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
      });
    });
  }
}
