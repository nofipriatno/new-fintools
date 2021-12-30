import 'package:fintools/domain/core/constant/app_string.dart';
import 'package:fintools/domain/core/interface/i_storage.dart';
import 'package:fintools/domain/survey/response/check_latest_survey_response/check_latest_survey_response.dart';
import 'package:fintools/utilities/utilities.dart';

class AppData {
  final IStorage? storage;

  AppData({this.storage});

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

  Future<String?> get surveyFormUpload async {
    final _box = await storage?.openBox(StorageConstants.locale);
    String? value =
        storage?.getString(_box!, key: AppString.surveyFormLatestKey);
    var result = Future.value(value);
    return result;
  }
}
