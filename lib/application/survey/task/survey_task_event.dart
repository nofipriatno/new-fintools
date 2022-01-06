part of 'survey_task_bloc.dart';

@freezed
class SurveyTaskEvent with _$SurveyTaskEvent {
  const factory SurveyTaskEvent.onInitialize() = _OnInitialize;
}
