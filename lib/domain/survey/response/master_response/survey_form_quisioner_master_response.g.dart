// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_form_quisioner_master_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SurveyFormQuisionerMasterResponse
    _$$_SurveyFormQuisionerMasterResponseFromJson(Map<String, dynamic> json) =>
        _$_SurveyFormQuisionerMasterResponse(
          status: json['status'] as int?,
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>)
              .map((e) => SurveyFormQuisionerMasterItem.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$_SurveyFormQuisionerMasterResponseToJson(
        _$_SurveyFormQuisionerMasterResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$_SurveyFormQuisionerMasterItem _$$_SurveyFormQuisionerMasterItemFromJson(
        Map<String, dynamic> json) =>
    _$_SurveyFormQuisionerMasterItem(
      id: json['id'] as String?,
      idQuisioner: json['idquisioner'] as String?,
      idQuestion: json['idpertanyaan'] as String?,
      question: json['pertanyaan'] as String?,
      questionTypeFlag: json['questionTypeFlag'] as int?,
      creDate: json['credate'] == null
          ? null
          : DateTime.parse(json['credate'] as String),
      creBy: json['creby'] as String?,
      modDate: json['moddate'] == null
          ? null
          : DateTime.parse(json['moddate'] as String),
      modBy: json['modby'] as String?,
      mandatory: json['mandatory'] as bool?,
    );

Map<String, dynamic> _$$_SurveyFormQuisionerMasterItemToJson(
        _$_SurveyFormQuisionerMasterItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'idquisioner': instance.idQuisioner,
      'idpertanyaan': instance.idQuestion,
      'pertanyaan': instance.question,
      'questionTypeFlag': instance.questionTypeFlag,
      'credate': instance.creDate?.toIso8601String(),
      'creby': instance.creBy,
      'moddate': instance.modDate?.toIso8601String(),
      'modby': instance.modBy,
      'mandatory': instance.mandatory,
    };
