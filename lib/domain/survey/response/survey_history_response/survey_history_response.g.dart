// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SurveyHistoryResponse _$$_SurveyHistoryResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SurveyHistoryResponse(
      status: json['status'] as int,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => HistoryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SurveyHistoryResponseToJson(
        _$_SurveyHistoryResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$_HistoryItem _$$_HistoryItemFromJson(Map<String, dynamic> json) =>
    _$_HistoryItem(
      surveyId: json['surveyId'] as String?,
      surveyorNIK: json['nik'] as String?,
      name: json['nama'] as String?,
      clientID: json['ktp_no'] as String?,
      platNumber: json['nopol'] as String?,
      address: json['alamat'] as String?,
      creDate: json['credate'] == null
          ? null
          : DateTime.parse(json['credate'] as String),
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
    );

Map<String, dynamic> _$$_HistoryItemToJson(_$_HistoryItem instance) =>
    <String, dynamic>{
      'surveyId': instance.surveyId,
      'nik': instance.surveyorNIK,
      'nama': instance.name,
      'ktp_no': instance.clientID,
      'nopol': instance.platNumber,
      'alamat': instance.address,
      'credate': instance.creDate?.toIso8601String(),
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
