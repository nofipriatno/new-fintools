import 'package:dartz/dartz.dart';
import 'package:fintools/domain/core/failure/generic_failure.dart';
import 'package:fintools/domain/survey/local/survey_client_model.dart';
import 'package:fintools/domain/survey/local/survey_data_model.dart';
import 'package:fintools/domain/survey/local/survey_question_model.dart';
import 'package:fintools/domain/survey/response/survey_login_response/survey_login_response.dart';
import 'package:fintools/domain/survey/response/survey_task_list_response/survey_task_list_response.dart';
import 'package:geolocator/geolocator.dart';

abstract class IUserSurvey {
  Future<Either<GenericFailure, SurveyLoginResponse>> surveyLogin(
      {required String username, required String password});

  Future<Either<GenericFailure, bool>> postSurveyData({
    required List<SurveyClientModel> client,
    required List<QuestionAnswerModel> question,
    required List<SurveyDataModel> data,
    required SurveyTask task,
    required Position position,
  });
}
