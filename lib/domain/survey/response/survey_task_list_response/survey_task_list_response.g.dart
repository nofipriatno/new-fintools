// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_task_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SurveyTaskListResponse _$$_SurveyTaskListResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SurveyTaskListResponse(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>)
          .map((e) =>
              e == null ? null : SurveyTask.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SurveyTaskListResponseToJson(
        _$_SurveyTaskListResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$_SurveyTask _$$_SurveyTaskFromJson(Map<String, dynamic> json) =>
    _$_SurveyTask(
      taskId: json['task_id'] as String?,
      nik: json['nik'] as String?,
      name: json['nama'] as String?,
      platNumber: json['nopol'] as String?,
      creDate: json['credate'] == null
          ? null
          : DateTime.parse(json['credate'] as String),
      isPush: json['ispush'] as int?,
      address: json['alamat'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
    );

Map<String, dynamic> _$$_SurveyTaskToJson(_$_SurveyTask instance) =>
    <String, dynamic>{
      'task_id': instance.taskId,
      'nik': instance.nik,
      'nama': instance.name,
      'nopol': instance.platNumber,
      'credate': instance.creDate?.toIso8601String(),
      'ispush': instance.isPush,
      'alamat': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
