import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fintools/domain/core/constant/app_endpoint.dart';
import 'package:fintools/domain/core/constant/app_string.dart';
import 'package:fintools/domain/core/exceptions/exceptions.dart';
import 'package:fintools/domain/core/failure/generic_failure.dart';
import 'package:fintools/domain/core/interface/i_network_service.dart';
import 'package:fintools/domain/core/interface/i_storage.dart';
import 'package:fintools/domain/survey/interface/i_user_survey.dart';
import 'package:fintools/domain/survey/local/survey_client_model.dart';
import 'package:fintools/domain/survey/local/survey_data_model.dart';
import 'package:fintools/domain/survey/local/survey_question_model.dart';
import 'package:fintools/domain/survey/response/survey_login_response/survey_login_response.dart';
import 'package:fintools/domain/survey/response/survey_task_list_response/survey_task_list_response.dart';
import 'package:fintools/utilities/utilities.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IUserSurvey)
class UserSurveyRepository implements IUserSurvey {
  final INetworkService _networkService;
  final IStorage _storage;

  UserSurveyRepository(this._networkService, this._storage);

  @override
  Future<Either<GenericFailure, SurveyLoginResponse>> surveyLogin(
      {required String username, required String password}) async {
    try {
      const path = AppEndpoint.surveyLogin;
      final apiResult = await _networkService.postHttp(
          path: path, content: {'nik': username, 'password': password});
      SurveyLoginResponse response = SurveyLoginResponse.fromJson(apiResult);
      final box = await _storage.openBox(StorageConstants.userSurvey);
      await _storage.setJson(box,
          key: AppString.surveyCredentialKey, object: response.toJson());
      await _storage.putBool(box, key: AppString.surveyIsLoginKey, value: true);
      await _storage.close(box);
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
  Future<Either<GenericFailure, bool>> postSurveyData({
    required List<SurveyClientModel> client,
    required List<QuestionAnswerModel> question,
    required List<SurveyDataModel> data,
    required SurveyTask task,
  }) async {
    try {
      await _networkService.postHttp(
        contentType: 'multipart/form-data',
        path: AppEndpoint.surveyPost,
        useMaxTimeout: true,
        content: FormData.fromMap(
          AppUtils.createSurveyFormData(
            client: client,
            question: question,
            data: data,
            task: task,
          ),
        ),
      );

      return right(true);
    } on FailureException catch (_) {
      return const Left(GenericFailure.unknownError());
    } on NetworkException catch (_) {
      return const Left(GenericFailure.unknownError());
    } on ServerException catch (e) {
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
}
