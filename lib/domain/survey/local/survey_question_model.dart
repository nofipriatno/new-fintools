import 'package:fintools/domain/survey/local/survey_search_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'survey_question_model.freezed.dart';

@freezed
class QuestionAnswerModel with _$QuestionAnswerModel {
  const factory QuestionAnswerModel({
    required String? id,
    required String? idQuisioner,
    required String? question,
    required SearchModel? search,
    required TextEditingController? controller,
  }) = _QuestionAnswerModel;
}
