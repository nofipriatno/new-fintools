// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SurveyDataModel _$$_SurveyDataModelFromJson(Map<String, dynamic> json) =>
    _$_SurveyDataModel(
      id: json['id'] as String?,
      formId: json['formId'] as String?,
      formName: json['formName'] as String?,
      index: json['index'] as int?,
      filePath: json['filePath'] as String?,
      dateTime: json['dateTime'] == null
          ? null
          : DateTime.parse(json['dateTime'] as String),
      extension: json['extension'] as String?,
    );

Map<String, dynamic> _$$_SurveyDataModelToJson(_$_SurveyDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'formId': instance.formId,
      'formName': instance.formName,
      'index': instance.index,
      'filePath': instance.filePath,
      'dateTime': instance.dateTime?.toIso8601String(),
      'extension': instance.extension,
    };
