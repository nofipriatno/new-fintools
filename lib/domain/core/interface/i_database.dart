import 'package:fintools/domain/survey/response/master_response/survey_form_quisioner_master_response.dart';
import 'package:fintools/domain/survey/response/master_response/survey_form_upload_master_response.dart';
import 'package:fintools/infrastructure/core/database.dart';

abstract class IDatabase {
  Future<bool> saveSurveyForm(List<SurveyFormUploadMasterItem?> items);

  Future<List<FormUploadData>> getSurveyForm();

  Future<bool> deleteSavedSurveyForm();

  Future<bool> saveSurveyQuisioner(List<SurveyFormQuisionerMasterItem?> items);

  Future<List<FormQuisionerData>> getSurveyQuisioner();

  Future<bool> deleteSavedSurveyQuisioner();
}
