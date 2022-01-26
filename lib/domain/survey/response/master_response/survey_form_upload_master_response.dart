import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'survey_form_upload_master_response.freezed.dart';

part 'survey_form_upload_master_response.g.dart';

SurveyFormUploadMasterResponse surveyFormUploadMasterResponseFromJson(
        String str) =>
    SurveyFormUploadMasterResponse.fromJson(json.decode(str));

String surveyFormUploadMasterResponseToJson(
        SurveyFormUploadMasterResponse data) =>
    json.encode(data.toJson());

@freezed
class SurveyFormUploadMasterResponse
    with _$SurveyFormUploadMasterResponse {
  const factory SurveyFormUploadMasterResponse({
    required int? status,
    required String? message,
    required List<SurveyFormUploadMasterItem?> data,
  }) = _SurveyFormUploadMasterResponse;

  factory SurveyFormUploadMasterResponse.fromJson(Map<String, dynamic> json) =>
      _$SurveyFormUploadMasterResponseFromJson(json);
}

@freezed
class SurveyFormUploadMasterItem with _$SurveyFormUploadMasterItem {
  const factory SurveyFormUploadMasterItem({
    required String? id,
    @JsonKey(name: 'idform') required String? idForm,
    @JsonKey(name: 'kode') required String? code,
    @JsonKey(name: 'kelengkapan') required String? name,
    required String? type,
    @JsonKey(name: 'formname') required String? formName,
    required int? count,
    @JsonKey(name: 'credate') required DateTime? creDate,
    @JsonKey(name: 'creby') required String? creBy,
    @JsonKey(name: 'moddate') required DateTime? modDate,
    @JsonKey(name: 'modby') required String? modBy,
    required bool? mandatory,
  }) = _SurveyFormUploadMasterItem;

  factory SurveyFormUploadMasterItem.fromJson(Map<String, dynamic> json) =>
      _$SurveyFormUploadMasterItemFromJson(json);
}
