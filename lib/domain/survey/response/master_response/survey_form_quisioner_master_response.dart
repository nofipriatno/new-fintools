import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'survey_form_quisioner_master_response.freezed.dart';

part 'survey_form_quisioner_master_response.g.dart';

SurveyFormQuisionerMasterResponse surveyFormQuisionerMasterResponseFromJson(
        String str) =>
    SurveyFormQuisionerMasterResponse.fromJson(json.decode(str));

String surveyFormQuisionerMasterResponseToJson(
        SurveyFormQuisionerMasterResponse data) =>
    json.encode(data.toJson());

@freezed
class SurveyFormQuisionerMasterResponse
    with _$SurveyFormQuisionerMasterResponse {
  const factory SurveyFormQuisionerMasterResponse({
    required int? status,
    required String? message,
    required List<SurveyFormQuisionerMasterItem> data,
  }) = _SurveyFormQuisionerMasterResponse;

  factory SurveyFormQuisionerMasterResponse.fromJson(
          Map<String, dynamic> json) =>
      _$SurveyFormQuisionerMasterResponseFromJson(json);
}

@freezed
class SurveyFormQuisionerMasterItem with _$SurveyFormQuisionerMasterItem {
  const factory SurveyFormQuisionerMasterItem({
    required String? id,
    @JsonKey(name: 'idquisioner') required String? idQuisioner,
    @JsonKey(name: 'idpertanyaan') required String? idQuestion,
    @JsonKey(name: 'pertanyaan') required String? question,
    required int? questionTypeFlag,
    @JsonKey(name: 'credate') required DateTime? creDate,
    @JsonKey(name: 'creby') required String? creBy,
    @JsonKey(name: 'moddate') required DateTime? modDate,
    @JsonKey(name: 'modby') required String? modBy,
  }) = _SurveyFormQuisionerMasterItem;

  factory SurveyFormQuisionerMasterItem.fromJson(Map<String, dynamic> json) =>
      _$SurveyFormQuisionerMasterItemFromJson(json);
}
