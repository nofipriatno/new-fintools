import 'package:fintools/domain/core/constant/app_string.dart';
import 'package:fintools/domain/core/interface/i_storage.dart';
import 'package:fintools/domain/survey/response/check_latest_survey_response/check_latest_survey_response.dart';

class AppData {
  final IStorage? storage;
  AppData({this.storage});

  void saveSurveyLatestMaster(CheckLatestSurveyResponse data) async {
    final _box = await storage?.openBox(StorageConstants.locale);
    if (data.formUpdate != null) {
      storage?.putString(_box!,
          key: AppString.surveyFormLatestKey,
          value: data.formUpdate.toString());
    }

    if (data.formDetailUpdate != null) {
      storage?.putString(_box!,
          key: AppString.surveyFormDetailLatestKey,
          value: data.formDetailUpdate.toString());
    }

    if (data.zipcodeUpdate != null) {
      storage?.putString(_box!,
          key: AppString.surveyZipCodeLatestKey,
          value: data.zipcodeUpdate.toString());
    }

    if (data.quisionerUpdate != null) {
      storage?.putString(_box!,
          key: AppString.surveyQuisionerLatestKey,
          value: data.quisionerUpdate.toString());
    }

    if (data.quisionerDetailUpdate != null) {
      storage?.putString(_box!,
          key: AppString.surveyQuisionerDetailLatestKey,
          value: data.quisionerDetailUpdate.toString());
    }

    storage?.close(_box!);
  }
}
