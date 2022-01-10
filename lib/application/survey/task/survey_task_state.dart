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
  }) = _CheckClientSuccess;

  const factory SurveyTaskState.selectChoiceSuccess({
    required SearchModel item,
    required String choice,
  }) = _SelectChoiceSuccess;
}
