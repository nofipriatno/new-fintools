import 'package:fintools/domain/core/constant/app_enum.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'survey_client_model.freezed.dart';

@freezed
class SurveyClientModel with _$SurveyClientModel {
  const factory SurveyClientModel({
    required String? id,
    required String? title,
    required ClientFormType? clientFormType,
    required int? size,
    TextEditingController? controller,
  }) = _SurveyClientModel;
}
