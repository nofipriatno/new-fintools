import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:fintools/domain/core/database/form_quisioner_database.dart';
import 'package:fintools/domain/core/database/form_upload_database.dart';
import 'package:fintools/domain/core/database/survey_task_database.dart';
import 'package:fintools/domain/core/database/zipcode_database.dart';
import 'package:fintools/domain/core/interface/i_database.dart';
import 'package:fintools/domain/survey/response/master_response/survey_form_quisioner_master_response.dart';
import 'package:fintools/domain/survey/response/master_response/survey_form_upload_master_response.dart';
import 'package:fintools/domain/survey/response/master_response/survey_zipcode_master_response.dart';
import 'package:fintools/domain/survey/response/survey_task_list_response/survey_task_list_response.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'database.g.dart';

@LazySingleton(as: IDatabase)
@DriftDatabase(tables: [FormUpload, FormQuisioner, Zipcode, SurveyTaskQueue])
class AppDatabase extends _$AppDatabase implements IDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  Future<bool> saveSurveyForm(List<SurveyFormUploadMasterItem?> items) async {
    try {
      final data = items
          .map((item) => FormUploadData(
              id: item?.id ?? '',
              idForm: item?.idForm ?? '',
              code: item?.code ?? '',
              name: item?.name ?? '',
              type: item?.type ?? '',
              formName: item?.formName ?? '',
              count: item?.count ?? 0,
              creDate: item?.creDate ?? DateTime.now(),
              creBy: item?.creBy ?? 'Error',
              modDate: item?.modDate ?? DateTime.now(),
              mandatory: item?.mandatory ?? false,
              modBy: item?.modBy ?? 'Error'))
          .toList();
      await batch((batch) => batch.insertAll(formUpload, data));
      return Future.value(true);
    } catch (e) {
      return Future.value(false);
    }
  }

  @override
  Future<List<FormUploadData>> getSurveyForm() async {
    return await select(formUpload).get();
  }

  @override
  Future<bool> deleteSavedSurveyForm() async {
    try {
      delete(formUpload).go();
      return Future.value(true);
    } catch (e) {
      return Future.value(false);
    }
  }

  @override
  Future<bool> deleteSavedSurveyQuisioner() {
    try {
      delete(formQuisioner).go();
      return Future.value(true);
    } catch (e) {
      return Future.value(false);
    }
  }

  @override
  Future<List<FormQuisionerData>> getSurveyQuisioner() async {
    return await select(formQuisioner).get();
  }

  @override
  Future<bool> saveSurveyQuisioner(
      List<SurveyFormQuisionerMasterItem?> items) async {
    try {
      final data = items
          .map((item) => FormQuisionerData(
              id: item?.id ?? '',
              idQuisioner: item?.idQuisioner ?? '',
              idQuestion: item?.idQuestion ?? '',
              question: item?.question ?? '',
              questionTypeFlag: item?.questionTypeFlag ?? 0,
              creDate: item?.creDate ?? DateTime.now(),
              creBy: item?.creBy ?? '',
              modDate: item?.modDate ?? DateTime.now(),
              mandatory: item?.mandatory ?? false,
              modBy: item?.modBy ?? ''))
          .toList();
      await batch((batch) => batch.insertAll(formQuisioner, data));
      return Future.value(true);
    } catch (e) {
      return Future.value(false);
    }
  }

  @override
  Future<bool> deleteSavedSurveyZipcode() async {
    try {
      delete(zipcode).go();
      return Future.value(true);
    } catch (e) {
      return Future.value(false);
    }
  }

  @override
  Future<List<ZipcodeData>> getSurveyZipcode() async {
    return await select(zipcode).get();
  }

  @override
  Future<bool> saveSurveyZipcode(List<SurveyZipcodeItem?> items) async {
    try {
      final data = items
          .map((item) => ZipcodeData(
              id: item?.id ?? 0,
              city: item?.city ?? '',
              subDistrict: item?.subDistrict ?? '',
              district: item?.district ?? '',
              postCode: item?.postCode ?? '',
              billArea: item?.billArea ?? ''))
          .toList();
      await batch((batch) => batch.insertAll(zipcode, data));
      return Future.value(true);
    } catch (e) {
      return Future.value(false);
    }
  }

  @override
  Future<bool> saveSurveyTaskQueue(SurveyTask? item,
      {required DateTime insertDate}) async {
    try {
      await into(surveyTaskQueue).insertOnConflictUpdate(
        SurveyTaskQueueData(
          taskId: item?.taskId ?? '',
          nik: item?.nik ?? '',
          name: item?.name ?? '',
          platNumber: item?.platNumber ?? '',
          isPush: item?.isPush ?? 0,
          creDate: item?.creDate ?? DateTime.now(),
          latitude: item?.latitude ?? '',
          longitude: item?.longitude ?? '',
          localCreate: insertDate,
        ),
      );
      return Future.value(true);
    } catch (e) {
      return Future.value(false);
    }
  }

  @override
  Future<List<SurveyTaskQueueData>> getLatestSurveyTask() async {
    return await (select(surveyTaskQueue)
          ..orderBy([(t) => OrderingTerm(expression: t.localCreate)]))
        .get();
  }
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'master.sqlite'));
    return NativeDatabase(file);
  });
}
