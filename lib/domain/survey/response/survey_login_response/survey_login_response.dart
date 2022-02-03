import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'survey_login_response.freezed.dart';

part 'survey_login_response.g.dart';

SurveyLoginResponse surveyLoginResponseFromJson(String str) =>
    SurveyLoginResponse.fromJson(json.decode(str));

String surveyLoginResponseToJson(SurveyLoginResponse data) =>
    json.encode(data.toJson());

@freezed
class SurveyLoginResponse with _$SurveyLoginResponse {
  const factory SurveyLoginResponse({
    required int? status,
    required String? message,
    required UserData? data,
    required String? token
  }) = _SurveyLoginResponse;

  factory SurveyLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$SurveyLoginResponseFromJson(json);
}

@freezed
class UserData with _$UserData {
  const factory UserData({
    @JsonKey(name: 'Nik') required String? nik,
    @JsonKey(name: 'Nama') required String? name,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
