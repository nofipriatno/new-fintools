// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_latest_survey_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CheckLatestSurveyResponse _$$_CheckLatestSurveyResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CheckLatestSurveyResponse(
      status: json['status'] as int?,
      message: json['message'] as String?,
      formUpdate: json['formUpdate'] == null
          ? null
          : DateTime.parse(json['formUpdate'] as String),
      formDetailUpdate: json['formDetailUpdate'] == null
          ? null
          : DateTime.parse(json['formDetailUpdate'] as String),
      zipcodeUpdate: json['zipcodeUpdate'] == null
          ? null
          : DateTime.parse(json['zipcodeUpdate'] as String),
      quisionerUpdate: json['quisionerUpdate'] == null
          ? null
          : DateTime.parse(json['quisionerUpdate'] as String),
      quisionerDetailUpdate: json['quisionerDetailUpdate'] == null
          ? null
          : DateTime.parse(json['quisionerDetailUpdate'] as String),
    );

Map<String, dynamic> _$$_CheckLatestSurveyResponseToJson(
        _$_CheckLatestSurveyResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'formUpdate': instance.formUpdate?.toIso8601String(),
      'formDetailUpdate': instance.formDetailUpdate?.toIso8601String(),
      'zipcodeUpdate': instance.zipcodeUpdate?.toIso8601String(),
      'quisionerUpdate': instance.quisionerUpdate?.toIso8601String(),
      'quisionerDetailUpdate':
          instance.quisionerDetailUpdate?.toIso8601String(),
    };
