import 'package:dartz/dartz.dart';
import 'package:fintools/domain/core/constant/app_endpoint.dart';
import 'package:fintools/domain/core/exceptions/exceptions.dart';
import 'package:fintools/domain/core/failure/generic_failure.dart';
import 'package:fintools/domain/core/interface/i_network_service.dart';
import 'package:fintools/domain/survey/interface/i_survey.dart';
import 'package:fintools/domain/survey/response/survey_task_list_response/survey_task_list_response.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ISurvey)
class SurveyRepository implements ISurvey {
  final INetworkService _service;

  SurveyRepository(this._service);

  @override
  Future<Either<GenericFailure, SurveyTaskListResponse>> getTask() async {
    try {
      // final apiResult = await _service.getHttp(path: AppEndpoint.surveyTask);
      // SurveyTaskListResponse response = SurveyTaskListResponse.fromJson(apiResult);
      SurveyTaskListResponse response = SurveyTaskListResponse.fromJson(_dummy);
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

  static const Map<String, dynamic> _dummy = {
    "status": 200,
    "message": "OK",
    "data": [
      {
        "task_id": "03f44e02-3484-422c-9304-5d30e01a9eb5",
        "nik": "1312011",
        "nama": "ERWANTO WASITO",
        "nopol": "T 1545 PL",
        "credate": "2021-12-21T09:14:52.22455+07:00",
        "ispush": 1,
        "latitude": "-6.181589138723145",
        "longitude": "106.85043453979493"
      },
      {
        "task_id": "1c39cdfa-59b8-4552-9033-e03c7dc32285",
        "nik": "1312011",
        "nama": "FATHUR RAHMAN",
        "nopol": "B 1706 BVI",
        "credate": "2021-12-21T09:14:04.010336+07:00",
        "ispush": 1,
        "latitude": "-6.361039966137323",
        "longitude": "107.36201181384462"
      }
    ]
  };

  @override
  Future<SurveyTask> upcomingTask() {
    // TODO: implement upcomingTask
    throw UnimplementedError();
  }
}
