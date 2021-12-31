// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_zipcode_master_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SurveyZipcodeMasterResponse _$$_SurveyZipcodeMasterResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SurveyZipcodeMasterResponse(
      status: json['status'] as int,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => SurveyZipcodeItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SurveyZipcodeMasterResponseToJson(
        _$_SurveyZipcodeMasterResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$_SurveyZipcodeItem _$$_SurveyZipcodeItemFromJson(Map<String, dynamic> json) =>
    _$_SurveyZipcodeItem(
      id: json['sysZipid'] as int?,
      city: json['kota'] as String?,
      subDistrict: json['kecamatan'] as String?,
      district: json['kelurahan'] as String?,
      postCode: json['kodepos'] as String?,
      billArea: json['areatagih'] as String?,
    );

Map<String, dynamic> _$$_SurveyZipcodeItemToJson(
        _$_SurveyZipcodeItem instance) =>
    <String, dynamic>{
      'sysZipid': instance.id,
      'kota': instance.city,
      'kecamatan': instance.subDistrict,
      'kelurahan': instance.district,
      'kodepos': instance.postCode,
      'areatagih': instance.billArea,
    };
