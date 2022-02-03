// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchModel _$$_SearchModelFromJson(Map<String, dynamic> json) =>
    _$_SearchModel(
      id: json['id'] as String?,
      title: json['title'] as String?,
      items:
          (json['items'] as List<dynamic>?)?.map((e) => e as String).toList(),
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$_SearchModelToJson(_$_SearchModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'items': instance.items,
      'value': instance.value,
    };
