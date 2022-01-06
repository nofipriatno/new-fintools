import 'package:bloc/bloc.dart';
import 'package:fintools/domain/core/interface/i_database.dart';
import 'package:fintools/domain/core/interface/i_storage.dart';
import 'package:fintools/domain/survey/interface/i_survey.dart';
import 'package:fintools/domain/survey/local/survey_question_model.dart';
import 'package:fintools/utilities/utilities.dart';
import 'package:flutter/cupertino.dart';
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
        final question = questioner
            .map(
                (q) => AppUtils.splitQuestion(q, e.taskId ?? '', _storage, box))
            .toList();

        for (var element in question) {
          var getBox =
              await _storage.getDynamicData(box, key: e.taskId! + element.id!);
          element.controller?.text = getBox ?? '';
        }

        emit(_CheckClientSuccess(questions: question));
      });
    });
  }
}
