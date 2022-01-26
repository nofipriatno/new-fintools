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

  const factory SurveyTaskEvent.onFileSelect({
    required String? path,
    required int? index,
    required FormUploadData id,
    required String? extension,
    required String taskId,
  }) = _OnFileSelect;

  const factory SurveyTaskEvent.onSubmitSurvey({
    required List<SurveyClientModel> client,
    required List<QuestionAnswerModel> question,
    required List<SurveyDataModel> data,
    required SurveyTask task,
    required List<bool> checkedData,
  }) = _OnSubmitSurvey;

  const factory SurveyTaskEvent.onProcessCheck({
    required List<SurveyClientModel> client,
    required List<QuestionAnswerModel> question,
    required List<FormUploadData> formData,
    required List<SurveyDataModel> data,
  }) = _OnProcessCheck;
}
