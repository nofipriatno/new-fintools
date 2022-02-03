import 'package:fintools/domain/survey/response/master_response/survey_form_quisioner_master_response.dart';
import 'package:fintools/domain/survey/response/master_response/survey_form_upload_master_response.dart';
import 'package:fintools/domain/survey/response/master_response/survey_zipcode_master_response.dart';
import 'package:fintools/domain/survey/response/survey_task_list_response/survey_task_list_response.dart';
import 'package:fintools/infrastructure/core/database.dart';

abstract class IDatabase {
  Future<bool> saveSurveyForm(List<SurveyFormUploadMasterItem?> items);

  Future<List<FormUploadData>> getSurveyForm();

  Future<bool> deleteSavedSurveyForm();

  Future<bool> saveSurveyQuisioner(List<SurveyFormQuisionerMasterItem?> items);

  Future<List<FormQuisionerData>> getSurveyQuisioner();

  Future<bool> deleteSavedSurveyQuisioner();

  Future<bool> saveSurveyZipcode(List<SurveyZipcodeItem?> items);

  Future<List<ZipcodeData>> getSurveyZipcode();

  Future<bool> deleteSavedSurveyZipcode();

  Future<bool> saveSurveyTaskQueue(SurveyTask? item,
      {required DateTime insertDate});

  Future<List<SurveyTaskQueueData>> getLatestSurveyTask();

  Future<bool> deleteCompletedTask({required SurveyTask? task});
}
