part of 'survey_task_bloc.dart';

@freezed
class SurveyTaskEvent with _$SurveyTaskEvent {
  const factory SurveyTaskEvent.onInitialize({required String? taskId}) = _OnInitialize;
}
