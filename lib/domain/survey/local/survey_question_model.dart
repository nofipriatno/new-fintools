import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'survey_question_model.freezed.dart';

@freezed
class QuestionAnswerModel with _$QuestionAnswerModel {
  const factory QuestionAnswerModel({
    required String? id,
    required String? question,
    required TextEditingController? controller,
  }) = _QuestionAnswerModel;
}
