import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'check_latest_survey_response.freezed.dart';

part 'check_latest_survey_response.g.dart';

CheckLatestSurveyResponse checkLatestSurveyResponseFromJson(String str) =>
    CheckLatestSurveyResponse.fromJson(json.decode(str));

String checkLatestSurveyResponseToJson(CheckLatestSurveyResponse data) =>
    json.encode(data.toJson());

@freezed
class CheckLatestSurveyResponse with _$CheckLatestSurveyResponse {
  const factory CheckLatestSurveyResponse({
    @required int? status,
    @required String? message,
    @required DateTime? formUpdate,
    @required DateTime? formDetailUpdate,
    @required DateTime? zipcodeUpdate,
    @required DateTime? quisionerUpdate,
    @required DateTime? quisionerDetailUpdate,
  }) = _CheckLatestSurveyResponse;

  factory CheckLatestSurveyResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckLatestSurveyResponseFromJson(json);
}
