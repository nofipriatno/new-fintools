part of 'survey_task_bloc.dart';

@freezed
class SurveyTaskState with _$SurveyTaskState {
  const factory SurveyTaskState.initial() = _Initial;

  const factory SurveyTaskState.loading() = _Loading;

  const factory SurveyTaskState.checkClientSuccess({
    required List<QuestionAnswerModel> questions,
    required List<FormUploadData> assets,
    required List<FormUploadData> document,
    required List<SurveyClientModel> client,
    required List<ZipcodeData> zipcode,
    required List<SurveyDataModel> data,
  }) = _CheckClientSuccess;

  const factory SurveyTaskState.selectChoiceSuccess({
    required SearchModel item,
    required String choice,
  }) = _SelectChoiceSuccess;

  const factory SurveyTaskState.selectFileSuccess(
      {required SurveyDataModel data}) = _SelectFileSuccess;

  const factory SurveyTaskState.submitSuccess({
    required SurveyTask task,
  }) = _SubmitSuccess;

  const factory SurveyTaskState.submitFailed({
    required GenericFailure failure,
  }) = _SubmitFailed;

  const factory SurveyTaskState.checkCompletedData({
    required bool clientCompleted,
    required bool questionCompleted,
    required bool assetsCompleted,
    required bool documentsCompleted,
  }) = _CheckCompletedData;

  const factory SurveyTaskState.isMandatory({
    required String reason,
  }) = _IsMandatory;
}
