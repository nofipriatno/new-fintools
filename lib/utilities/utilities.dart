import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fintools/domain/core/interface/i_storage.dart';
import 'package:fintools/domain/survey/local/survey_client_model.dart';
import 'package:fintools/domain/survey/local/survey_data_model.dart';
import 'package:fintools/domain/survey/local/survey_question_model.dart';
import 'package:fintools/domain/survey/local/survey_search_model.dart';
import 'package:fintools/domain/survey/response/survey_task_list_response/survey_task_list_response.dart';
import 'package:fintools/infrastructure/core/database.dart';
import 'package:fintools/utilities/i10n/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

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
        idQuisioner: item.idQuestion,
        question: newQuestion,
        mandatory: item.mandatory,
        search: SearchModel(
            id: item.id,
            value: choices.isEmpty ? '' : choices.first,
            items: choices,
            title: newQuestion),
        controller: TextEditingController());

    a.copyWith(
        controller: a.controller
          ?..addListener(() async {
            storage.putString(box,
                key: taskId + item.id + SurveyConstant.question.name,
                value: a.controller?.text ?? '');
          }));

    return a;
  }

  static Map<String, dynamic> createSurveyFormData({
    required List<SurveyClientModel> client,
    required List<QuestionAnswerModel> question,
    required List<SurveyDataModel> data,
    required SurveyTask task,
    required Position position,
  }) {
    Map<String, dynamic> clientParam = {}
      ..putIfAbsent('GELAR_DEPAN', () => '')
      ..putIfAbsent(
          'NAMA',
          () => client
              .firstWhere((element) => element.id == 'id-form-name-1')
              .controller
              ?.text)
      ..putIfAbsent('GELAR_BELAKANG', () => '')
      ..putIfAbsent(
          'NAMA_KTP',
          () => client
              .firstWhere((element) => element.id == 'id-form-name-1')
              .controller
              ?.text)
      ..putIfAbsent(
          'NO_KTP',
          () => client
              .firstWhere((element) => element.id == 'id-form-name-2')
              .controller
              ?.text)
      ..putIfAbsent(
          'KTP_EXPIRE_FROM',
          () => client
              .firstWhere((element) => element.id == 'id-form-name-3')
              .controller
              ?.text)
      ..putIfAbsent(
          'KTP_EXPIRE_TO',
          () => client
              .firstWhere((element) => element.id == 'id-form-name-4')
              .controller
              ?.text)
      ..putIfAbsent('AO', () => '')
      ..putIfAbsent(
          'TGLLAHIR',
          () => client
              .firstWhere((element) => element.id == 'id-form-name-7')
              .controller
              ?.text)
      ..putIfAbsent(
          'TEMPATLAHIR',
          () => client
              .firstWhere((element) => element.id == 'id-form-name-6')
              .controller
              ?.text)
      ..putIfAbsent(
          'NAMAIBU',
          () => client
              .firstWhere((element) => element.id == 'id-form-name-9')
              .controller
              ?.text)
      ..putIfAbsent(
          'ALAMAT',
          () => client
              .firstWhere((element) => element.id == 'id-form-name-8')
              .controller
              ?.text)
      ..putIfAbsent(
          'RT',
          () => client
              .firstWhere((element) => element.id == 'id-form-name-10')
              .controller
              ?.text)
      ..putIfAbsent(
          'RW',
          () => client
              .firstWhere((element) => element.id == 'id-form-name-11')
              .controller
              ?.text)
      ..putIfAbsent(
          'KODEPOS',
          () => client
              .firstWhere((element) => element.id == 'id-form-name-12')
              .controller
              ?.text)
      ..putIfAbsent(
          'KELURAHAN',
          () => client
              .firstWhere((element) => element.id == 'id-form-name-13')
              .controller
              ?.text)
      ..putIfAbsent(
          'KECAMATAN',
          () => client
              .firstWhere((element) => element.id == 'id-form-name-14')
              .controller
              ?.text)
      ..putIfAbsent(
          'HPNO',
          () => client
              .firstWhere((element) => element.id == 'id-form-name-16')
              .controller
              ?.text)
      ..putIfAbsent(
          'TELPNO',
          () => client
              .firstWhere((element) => element.id == 'id-form-name-15')
              .controller
              ?.text)
      ..putIfAbsent(
          'FAXNO',
          () => client
              .firstWhere((element) => element.id == 'id-form-name-17')
              .controller
              ?.text)
      ..putIfAbsent('NOPOL', () => task.platNumber)
      ..putIfAbsent('LAT', () => position.latitude.toString())
      ..putIfAbsent('LNG', () => position.longitude.toString())
      ..putIfAbsent('IDQUESTION', () => question.first.idQuisioner)
      ..putIfAbsent('TASKID', () => task.taskId);

    List<String> idFormDetails = [];
    List<String> idQuisionerDetail = [];
    List<String> answers = [];

    var params = {
      'BODYJSON': jsonEncode(clientParam),
      'IDFORMDETAIL': idFormDetails
    };

    for (QuestionAnswerModel item in question) {
      String? answer = '';
      if (item.search?.items != null) {
        answer = "${item.search?.value} ";
      }

      if (item.controller?.text.isNotEmpty == true) {
        answer += "(${item.controller?.text})";
      }
      idQuisionerDetail.add(item.id ?? '');
      answers.add(answer.isEmpty ? "Tidak Terisi" : answer);
    }

    params.putIfAbsent('IDQUISIONERDETAIL', () => idQuisionerDetail);
    params.putIfAbsent('JAWABAN', () => answers);

    for (SurveyDataModel item in data) {
      idFormDetails.add(item.id ?? '');
      List<MultipartFile> files = [];
      String formName = '';
      final findSameId =
          data.where((element) => element.formName == item.formName).toList();
      for (SurveyDataModel newItem in findSameId) {
        files.add(MultipartFile.fromFileSync(newItem.filePath!));
        formName = newItem.formName ?? '';
      }
      params.putIfAbsent(formName, () => files);
    }

    return params;
  }

  static void launchUrlMap(
      {required String? lat, required String? long}) async {
    Position location = await determinePosition();
    String mapOptions = [
      'saddr=${location.latitude},${location.longitude}',
      'daddr=$lat,$long',
      'dir_action=navigate'
    ].join('&');

    final url = 'https://www.google.com/maps?$mapOptions';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static Future<Position> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition();
  }

  static String checkMandatory(int index) {
    switch (index) {
      case 0:
        return I10n.current.client;
      case 1:
        return I10n.current.quisioner;
      case 2:
        return I10n.current.asset;
      case 3:
        return I10n.current.document;
      default:
        return '';
    }
  }
}
