import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:fintools/domain/core/database/form_quisioner_database.dart';
import 'package:fintools/domain/core/database/form_upload_database.dart';
import 'package:fintools/domain/core/interface/i_database.dart';
import 'package:fintools/domain/survey/response/master_response/survey_form_quisioner_master_response.dart';
import 'package:fintools/domain/survey/response/master_response/survey_form_upload_master_response.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'database.g.dart';

@LazySingleton(as: IDatabase)
@DriftDatabase(tables: [FormUpload, FormQuisioner])
class AppDatabase extends _$AppDatabase implements IDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  Future<bool> saveSurveyForm(List<SurveyFormUploadMasterItem?> items) async {
    try {
      for (SurveyFormUploadMasterItem? item in items) {
        into(formUpload).insert(
          FormUploadData(
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
              modBy: item?.modBy ?? 'Error'),
        );
      }
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
      for (SurveyFormQuisionerMasterItem? item in items) {
        into(formQuisioner).insert(FormQuisionerData(
            id: item?.id ?? '',
            idQuisioner: item?.idQuisioner ?? '',
            idQuestion: item?.idQuestion ?? '',
            question: item?.question ?? '',
            questionTypeFlag: item?.questionTypeFlag ?? 0,
            creDate: item?.creDate ?? DateTime.now(),
            creBy: item?.creBy ?? '',
            modDate: item?.modDate ?? DateTime.now(),
            modBy: item?.modBy ?? ''));
      }
      return Future.value(true);
    } catch (e) {
      return Future.value(false);
    }
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
