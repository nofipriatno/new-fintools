import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'survey_history_response.freezed.dart';

part 'survey_history_response.g.dart';

SurveyHistoryResponse surveyHistoryResponseFromJson(String str) =>
    SurveyHistoryResponse.fromJson(json.decode(str));

String surveyHistoryResponseToJson(SurveyHistoryResponse data) =>
    json.encode(data.toJson());

@freezed
class SurveyHistoryResponse with _$SurveyHistoryResponse {
  const factory SurveyHistoryResponse({
    required int status,
    required String message,
    required List<HistoryItem> data,
  }) = _SurveyHistoryResponse;

  factory SurveyHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$SurveyHistoryResponseFromJson(json);
}

@freezed
class HistoryItem with _$HistoryItem {
  const factory HistoryItem({
    required String? surveyId,
    @JsonKey(name: 'nik') required String? surveyorNIK,
    @JsonKey(name: 'nama') required String? name,
    @JsonKey(name: 'ktp_no') required String? clientID,
    @JsonKey(name: 'nopol') required String? platNumber,
    @JsonKey(name: 'alamat') required String? address,
    @JsonKey(name: 'credate') required DateTime? creDate,
    required String? latitude,
    required String? longitude,
  }) = _HistoryItem;

  factory HistoryItem.fromJson(Map<String, dynamic> json) =>
      _$HistoryItemFromJson(json);
}
