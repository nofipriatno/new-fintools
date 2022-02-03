import 'package:dartz/dartz.dart';
import 'package:fintools/domain/core/failure/generic_failure.dart';
import 'package:fintools/domain/survey/response/survey_history_response/survey_history_response.dart';
import 'package:fintools/domain/survey/response/survey_task_list_response/survey_task_list_response.dart';

abstract class ISurvey {
  Future<Either<GenericFailure, SurveyTaskListResponse>> getTask(
      {required String nik});

  Future<SurveyTask> upcomingTask(List<SurveyTask?> items);

  Future<bool> setUpcomingTask(SurveyTask item);

  Future<Either<GenericFailure, SurveyHistoryResponse>> getHistory(
      {required String nik});
}
