// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_form_upload_master_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SurveyFormUploadMasterResponse _$$_SurveyFormUploadMasterResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SurveyFormUploadMasterResponse(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>)
          .map((e) => e == null
              ? null
              : SurveyFormUploadMasterItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SurveyFormUploadMasterResponseToJson(
        _$_SurveyFormUploadMasterResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$_SurveyFormUploadMasterItem _$$_SurveyFormUploadMasterItemFromJson(
        Map<String, dynamic> json) =>
    _$_SurveyFormUploadMasterItem(
      id: json['id'] as String?,
      idForm: json['idform'] as String?,
      code: json['kode'] as String?,
      name: json['kelengkapan'] as String?,
      type: json['type'] as String?,
      formName: json['formname'] as String?,
      count: json['count'] as int?,
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

Map<String, dynamic> _$$_SurveyFormUploadMasterItemToJson(
        _$_SurveyFormUploadMasterItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'idform': instance.idForm,
      'kode': instance.code,
      'kelengkapan': instance.name,
      'type': instance.type,
      'formname': instance.formName,
      'count': instance.count,
      'credate': instance.creDate?.toIso8601String(),
      'creby': instance.creBy,
      'moddate': instance.modDate?.toIso8601String(),
      'modby': instance.modBy,
      'mandatory': instance.mandatory,
    };
