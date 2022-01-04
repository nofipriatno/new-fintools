import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'survey_task_list_response.freezed.dart';

part 'survey_task_list_response.g.dart';

SurveyTaskListResponse surveyTaskListResponseFromJson(String str) =>
    SurveyTaskListResponse.fromJson(json.decode(str));

String surveyTaskListResponseToJson(SurveyTaskListResponse data) =>
    json.encode(data.toJson());

@freezed
class SurveyTaskListResponse with _$SurveyTaskListResponse {
  const factory SurveyTaskListResponse({
    required int? status,
    required String? message,
    required List<SurveyTask?> data,
  }) = _SurveyTaskListResponse;

  factory SurveyTaskListResponse.fromJson(Map<String, dynamic> json) =>
      _$SurveyTaskListResponseFromJson(json);
}

@freezed
class SurveyTask with _$SurveyTask {
  const factory SurveyTask({
    required String? taskId,
    required String? nik,
    @JsonKey(name: 'nama') required String? name,
    @JsonKey(name: 'nopol') required String? platNumber,
    @JsonKey(name: 'credate') required DateTime? creDate,
    @JsonKey(name: 'ispush') required int? isPush,
    required String? latitude,
    required String? longitude,
  }) = _SurveyTask;

  factory SurveyTask.fromJson(Map<String, dynamic> json) =>
      _$SurveyTaskFromJson(json);
}
