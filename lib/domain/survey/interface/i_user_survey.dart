import 'package:dartz/dartz.dart';
import 'package:fintools/domain/core/failure/generic_failure.dart';
import 'package:fintools/domain/survey/response/survey_login_response/survey_login_response.dart';

abstract class IUserSurvey {
  Future<Either<GenericFailure, SurveyLoginResponse>> surveyLogin(
      {required String username, required String password});
}
