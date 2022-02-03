import 'package:freezed_annotation/freezed_annotation.dart';

part 'survey_data_model.freezed.dart';

part 'survey_data_model.g.dart';

@freezed
class SurveyDataModel with _$SurveyDataModel {
  const factory SurveyDataModel(
      {required String? id,
      required String? formId,
      required String? formName,
      required int? index,
      required String? filePath,
      required DateTime? dateTime,
      required bool? mandatory,
      required String? extension}) = _SurveyDataModel;

  factory SurveyDataModel.fromJson(Map<String, dynamic> json) =>
      _$SurveyDataModelFromJson(json);
}
