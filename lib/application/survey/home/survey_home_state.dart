part of 'survey_home_bloc.dart';

@freezed
class SurveyHomeState with _$SurveyHomeState {
  const factory SurveyHomeState.initial() = _Initial;

  const factory SurveyHomeState.fetchTaskLoading() = _FetchTaskLoading;

  const factory SurveyHomeState.fetchHistoryLoading() = _FetchHistoryLoading;

  const factory SurveyHomeState.fetchAllLoading() = _FetchAllLoading;

  const factory SurveyHomeState.fetchTaskSuccess(
      {required List<SurveyTask?> tasks,
      required SurveyTask? upcomingTask}) = _FetchTaskSuccess;

  const factory SurveyHomeState.fetchTaskFailed(
      {required GenericFailure error}) = _FetchTaskFailed;

  const factory SurveyHomeState.fetchHistorySuccess() = _FetchHistorySuccess;

  const factory SurveyHomeState.fetchHistoryFailed(
      {required GenericFailure error}) = _FetchHistoryFailed;

  const factory SurveyHomeState.fetchAllSuccess(
      {required SurveyTask? upcomingTask,
      required UserData? user,
      required List<SurveyTask?> tasks}) = _FetchAllSuccess;

  const factory SurveyHomeState.fetchAllFailed(
      {required GenericFailure error}) = _FetchAllFailed;

  const factory SurveyHomeState.navigateToSelectedTask({SurveyTask? task}) =
      _NavigateToSelectedTask;
}
