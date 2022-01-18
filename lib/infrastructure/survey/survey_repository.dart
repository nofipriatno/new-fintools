import 'package:dartz/dartz.dart';
import 'package:fintools/domain/core/constant/app_endpoint.dart';
import 'package:fintools/domain/core/exceptions/exceptions.dart';
import 'package:fintools/domain/core/failure/generic_failure.dart';
import 'package:fintools/domain/core/interface/i_database.dart';
import 'package:fintools/domain/core/interface/i_network_service.dart';
import 'package:fintools/domain/survey/interface/i_survey.dart';
import 'package:fintools/domain/survey/response/survey_task_list_response/survey_task_list_response.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ISurvey)
class SurveyRepository implements ISurvey {
  final INetworkService _service;
  final IDatabase _database;

  SurveyRepository(this._service, this._database);

  @override
  Future<Either<GenericFailure, SurveyTaskListResponse>> getTask(
      {required String nik}) async {
    try {
      final apiResult = await _service
          .getHttp(path: AppEndpoint.surveyTask, queryParameter: {"nik": nik});
      SurveyTaskListResponse response =
          SurveyTaskListResponse.fromJson(apiResult);
      return Right(response);
    } on FailureException catch (_) {
      return const Left(GenericFailure.unknownError());
    } on NetworkException catch (_) {
      return const Left(GenericFailure.unknownError());
    } on ServerException catch (_) {
      return const Left(GenericFailure.serverError());
    } on AuthException catch (_) {
      return const Left(GenericFailure.sessionExpired());
    } on NoInternetException catch (_) {
      return const Left(GenericFailure.noInternet());
    } on TimeOutException catch (_) {
      return const Left(GenericFailure.generalError());
    } catch (e) {
      return const Left(GenericFailure.unknownError());
    }
  }

  @override
  Future<SurveyTask> upcomingTask(List<SurveyTask?> items) async {
    try {
      final db = await _database.getLatestSurveyTask();
      if (db.isEmpty) {
        await _database.saveSurveyTaskQueue(
          items.first,
          insertDate: DateTime.now(),
        );
        throw (Exception());
      }
      final item = db.first;
      return Future.value(
        SurveyTask(
          taskId: item.taskId,
          nik: item.nik,
          name: item.name,
          platNumber: item.platNumber,
          creDate: item.creDate,
          isPush: item.isPush,
          latitude: item.latitude,
          longitude: item.longitude,
        ),
      );
    } catch (e) {
      return Future.value(items.first);
    }
  }

  @override
  Future<bool> setUpcomingTask(SurveyTask item) async {
    try {
      await _database.saveSurveyTaskQueue(
        item,
        insertDate: DateTime.now(),
      );
      return Future.value(true);
    } catch (e) {
      return Future.value(false);
    }
  }
}
