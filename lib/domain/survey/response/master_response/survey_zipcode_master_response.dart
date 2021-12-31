import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'survey_zipcode_master_response.freezed.dart';

part 'survey_zipcode_master_response.g.dart';

SurveyZipcodeMasterResponse surveyZipcodeMasterResponseFromJson(String str) =>
    SurveyZipcodeMasterResponse.fromJson(json.decode(str));

String surveyZipcodeMasterResponseToJson(SurveyZipcodeMasterResponse data) =>
    json.encode(data.toJson());

@freezed
class SurveyZipcodeMasterResponse with _$SurveyZipcodeMasterResponse {
  const factory SurveyZipcodeMasterResponse({
    required int status,
    required String message,
    required List<SurveyZipcodeItem> data,
  }) = _SurveyZipcodeMasterResponse;

  factory SurveyZipcodeMasterResponse.fromJson(Map<String, dynamic> json) =>
      _$SurveyZipcodeMasterResponseFromJson(json);
}

@freezed
class SurveyZipcodeItem with _$SurveyZipcodeItem {
  const factory SurveyZipcodeItem({
    @JsonKey(name: 'sysZipid') required int id,
    @JsonKey(name: 'kota') required String city,
    @JsonKey(name: 'kecamatan') required String subDistrict,
    @JsonKey(name: 'kelurahan') required String district,
    @JsonKey(name: 'kodepos') required String postCode,
    @JsonKey(name: 'areatagih') required String billArea,
  }) = _SurveyZipcodeItem;

  factory SurveyZipcodeItem.fromJson(Map<String, dynamic> json) =>
      _$SurveyZipcodeItemFromJson(json);
}
