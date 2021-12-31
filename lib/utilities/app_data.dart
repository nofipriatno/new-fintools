import 'package:fintools/domain/core/constant/app_string.dart';
import 'package:fintools/domain/core/interface/i_database.dart';
import 'package:fintools/domain/core/interface/i_storage.dart';
import 'package:fintools/domain/survey/response/check_latest_survey_response/check_latest_survey_response.dart';
import 'package:fintools/domain/survey/response/master_response/survey_form_quisioner_master_response.dart';
import 'package:fintools/domain/survey/response/master_response/survey_form_upload_master_response.dart';
import 'package:fintools/domain/survey/response/master_response/survey_zipcode_master_response.dart';
import 'package:fintools/utilities/utilities.dart';

class AppData {
  final IStorage? storage;
  final IDatabase? database;

  AppData({this.storage, this.database});

  void saveSurveyLatestMaster(CheckLatestSurveyResponse data) async {
    final _box = await storage?.openBox(StorageConstants.locale);
    if (data.formUpdate != null) {
      AppUtils.formatDate(data.formUpdate);
      storage?.putString(_box!,
          key: AppString.surveyFormLatestKey,
          value: '${AppUtils.formatDate(data.formUpdate)}');
    }

    if (data.formDetailUpdate != null) {
      storage?.putString(_box!,
          key: AppString.surveyFormDetailLatestKey,
          value: '${AppUtils.formatDate(data.formDetailUpdate)}');
    }

    if (data.zipcodeUpdate != null) {
      storage?.putString(_box!,
          key: AppString.surveyZipCodeLatestKey,
          value: '${AppUtils.formatDate(data.zipcodeUpdate)}');
    }

    if (data.quisionerUpdate != null) {
      storage?.putString(_box!,
          key: AppString.surveyQuisionerLatestKey,
          value: '${AppUtils.formatDate(data.quisionerUpdate)}');
    }

    if (data.quisionerDetailUpdate != null) {
      storage?.putString(_box!,
          key: AppString.surveyQuisionerDetailLatestKey,
          value: '${AppUtils.formatDate(data.quisionerDetailUpdate)}');
    }
  }

  void saveSingleFormLatestMaster(CheckLatestSurveyResponse data) async {
    final _box = await storage?.openBox(StorageConstants.locale);
    storage?.putString(_box!,
        key: AppString.surveyFormLatestKey,
        value: '${AppUtils.formatDate(data.formUpdate)}');
  }

  void saveSingleFormDetailLatestMaster(CheckLatestSurveyResponse data) async {
    final _box = await storage?.openBox(StorageConstants.locale);
    storage?.putString(_box!,
        key: AppString.surveyFormDetailLatestKey,
        value: '${AppUtils.formatDate(data.formDetailUpdate)}');
  }

  void saveSingleZipcodeLatestMaster(CheckLatestSurveyResponse data) async {
    final _box = await storage?.openBox(StorageConstants.locale);
    storage?.putString(_box!,
        key: AppString.surveyZipCodeLatestKey,
        value: '${AppUtils.formatDate(data.zipcodeUpdate)}');
  }

  void saveSingleQuisionerLatestMaster(CheckLatestSurveyResponse data) async {
    final _box = await storage?.openBox(StorageConstants.locale);
    storage?.putString(_box!,
        key: AppString.surveyQuisionerLatestKey,
        value: '${AppUtils.formatDate(data.quisionerUpdate)}');
  }

  void saveSingleQuisionerDetailLatestMaster(
      CheckLatestSurveyResponse data) async {
    final _box = await storage?.openBox(StorageConstants.locale);
    storage?.putString(_box!,
        key: AppString.surveyQuisionerDetailLatestKey,
        value: '${AppUtils.formatDate(data.quisionerDetailUpdate)}');
  }

  Future<String?> get surveyFormUpload async {
    final _box = await storage?.openBox(StorageConstants.locale);
    String? value =
        storage?.getString(_box!, key: AppString.surveyFormDetailLatestKey);
    var result = Future.value(value);
    return result;
  }

  Future<String?> get surveyZipcode async {
    final _box = await storage?.openBox(StorageConstants.locale);
    String? value =
        storage?.getString(_box!, key: AppString.surveyZipCodeLatestKey);
    var result = Future.value(value);
    return result;
  }

  Future<String?> get surveyFormDetailUpload async {
    final _box = await storage?.openBox(StorageConstants.locale);
    String? value =
        storage?.getString(_box!, key: AppString.surveyFormLatestKey);
    var result = Future.value(value);
    return result;
  }

  Future<String?> get surveyQuisioner async {
    final _box = await storage?.openBox(StorageConstants.locale);
    String? value =
        storage?.getString(_box!, key: AppString.surveyQuisionerLatestKey);
    var result = Future.value(value);
    return result;
  }

  Future<String?> get surveyQuisionerDetail async {
    final _box = await storage?.openBox(StorageConstants.locale);
    String? value = storage?.getString(_box!,
        key: AppString.surveyQuisionerDetailLatestKey);
    var result = Future.value(value);
    return result;
  }

  Future<void> setSurveyFormUploadToLocal(
      List<SurveyFormUploadMasterItem?> items) async {
    await database?.deleteSavedSurveyForm();
    await database?.saveSurveyForm(items);
  }

  Future<void> setSurveyFormQuisionerToLocal(
      List<SurveyFormQuisionerMasterItem?> items) async {
    await database?.deleteSavedSurveyQuisioner();
    await database?.saveSurveyQuisioner(items);
  }

  Future<void> setSurveyZipcodeToLocal(List<SurveyZipcodeItem?> items) async {
    await database?.deleteSavedSurveyZipcode();
    await database?.saveSurveyZipcode(items);
  }
}
