// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SurveyLoginResponse _$$_SurveyLoginResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SurveyLoginResponse(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : UserData.fromJson(json['data'] as Map<String, dynamic>),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$_SurveyLoginResponseToJson(
        _$_SurveyLoginResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'token': instance.token,
    };

_$_UserData _$$_UserDataFromJson(Map<String, dynamic> json) => _$_UserData(
      nik: json['Nik'] as String?,
      name: json['Nama'] as String?,
    );

Map<String, dynamic> _$$_UserDataToJson(_$_UserData instance) =>
    <String, dynamic>{
      'Nik': instance.nik,
      'Nama': instance.name,
    };
