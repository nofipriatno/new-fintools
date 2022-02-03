part of 'survey_home_bloc.dart';

@freezed
class SurveyHomeEvent with _$SurveyHomeEvent {
  const factory SurveyHomeEvent.onInitialize() = _OnInitialize;

  const factory SurveyHomeEvent.onRefreshTask() = _OnRefreshTask;

  const factory SurveyHomeEvent.onRefreshHistory() = _OnRefreshHistory;

  const factory SurveyHomeEvent.onSelectedTask({required SurveyTask? task}) =
      _OnSelectedTask;
}
