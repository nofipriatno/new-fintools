import 'package:freezed_annotation/freezed_annotation.dart';

part 'survey_search_model.freezed.dart';
part 'survey_search_model.g.dart';

@freezed
class SearchModel with _$SearchModel {
  const factory SearchModel({
    required String? id,
    required String? title,
    required List<String>? items,
    required String? value,
  }) = _SearchModel;

  factory SearchModel.fromJson(Map<String, dynamic> json) =>
      _$SearchModelFromJson(json);
}
