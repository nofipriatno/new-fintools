part of 'survey_task_bloc.dart';

@freezed
class SurveyTaskEvent with _$SurveyTaskEvent {
  const factory SurveyTaskEvent.onInitialize({required String? taskId}) =
      _OnInitialize;

  const factory SurveyTaskEvent.onChoiceSelect({
    required SearchModel item,
    required String choice,
    required String taskId,
  }) = _OnChoiceSelect;
}
