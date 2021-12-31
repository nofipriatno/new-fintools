import 'package:dartz/dartz.dart';
import 'package:fintools/domain/core/failure/generic_failure.dart';
import 'package:fintools/domain/survey/response/check_latest_survey_response/check_latest_survey_response.dart';
import 'package:fintools/domain/survey/response/master_response/survey_form_quisioner_master_response.dart';
import 'package:fintools/domain/survey/response/master_response/survey_form_upload_master_response.dart';

abstract class ICheckLatestSurveyFacade {
  Future<Either<GenericFailure, CheckLatestSurveyResponse>> getLatest();

  Future<Either<GenericFailure, SurveyFormUploadMasterResponse>>
      getFormUpload();

  Future<Either<GenericFailure, SurveyFormQuisionerMasterResponse>>
      getFormQuisioner();
}
