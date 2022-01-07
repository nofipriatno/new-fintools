import 'package:fintools/domain/core/interface/i_storage.dart';
import 'package:fintools/domain/survey/local/survey_question_model.dart';
import 'package:fintools/domain/survey/local/survey_search_model.dart';
import 'package:fintools/infrastructure/core/database.dart';
import 'package:fintools/utilities/i10n/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';

class AppUtils {
  AppUtils._();

  static void get showLoading => EasyLoading.show();

  static void get dismissLoading {
    if (EasyLoading.isShow) EasyLoading.dismiss();
  }

  static String? formatDate(DateTime? date,
      {String format = 'yyyy-MM-dd HH:mm:ss'}) {
    if (date == null) return null;
    final result = DateFormat(format, I10n.current.lang).format(date);
    return result;
  }

  static DateTime? normalizeDateTime(DateTime? date) {
    final formatted = formatDate(date);
    final result = convertStringToDate(formatted);
    return result;
  }

  static DateTime? convertStringToDate(String? date,
      {String format = 'yyyy-MM-dd HH:mm:ss'}) {
    if (date == null) return null;
    try {
      final result = DateFormat(format, I10n.current.lang).parse(date);
      return result;
    } catch (e) {
      return null;
    }
  }

  static bool isAfter(DateTime? first, DateTime? second) {
    if (first == null) return false;
    if (second == null) return true;
    return first.isAfter(second);
  }

  static bool isBefore(DateTime? first, DateTime? second) {
    if (first == null || second == null) return false;
    return first.isBefore(second);
  }

  static bool isSameMomentAs(DateTime? first, DateTime? second) {
    if (first == null || second == null) return false;
    return first.isAtSameMomentAs(second);
  }

  static String convertToToday({required DateTime date}) {
    try {
      String result = '';
      DateTime? now = normalizeDateTime(DateTime.now());
      DateTime? param = normalizeDateTime(date);
      if (isSameMomentAs(now, param)) {
        result +=
            '${I10n.current.today} ${formatDate(date, format: 'dd MMM,yyyy HH:mm')!}';
      } else {
        result += formatDate(date, format: 'EEEE dd MMM,yyyy HH:mm')!;
      }
      return result;
    } catch (e) {
      return 'Error';
    }
  }

  static QuestionAnswerModel splitQuestion(
    FormQuisionerData item,
    String taskId,
    IStorage storage,
    Box box,
  ) {
    var question = item.question.trim();
    var newQuestion = question;
    List<String> choices = [];
    if (question.contains("(") && (question.endsWith(")"))) {
      var rawQuestion = question;
      newQuestion = rawQuestion.substring(0, rawQuestion.indexOf("("));
      var rawChoice = rawQuestion
          .substring(rawQuestion.indexOf("("))
          .replaceAll("(", "")
          .replaceAll(")", "");
      choices = rawChoice.split('/').toList();
    }

    var a = QuestionAnswerModel(
        id: item.id,
        question: newQuestion,
        search: SearchModel(
            id: item.id,
            value: choices.isEmpty ? '' : choices.first,
            items: choices,
            title: newQuestion),
        controller: TextEditingController());

    a.copyWith(
        controller: a.controller
          ?..addListener(() async {
            storage.putDynamicData(box,
                key: taskId + item.id, value: a.controller?.text);
          }));

    return a;
  }
}
