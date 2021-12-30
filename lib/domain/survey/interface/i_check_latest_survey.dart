import 'package:dartz/dartz.dart';
import 'package:fintools/domain/core/failure/generic_failure.dart';
import 'package:fintools/domain/survey/response/check_latest_survey_response/check_latest_survey_response.dart';

abstract class ICheckLatestSurveyFacade {
  Future<Either<GenericFailure, CheckLatestSurveyResponse>> getLatest();
}
