import 'package:dartz/dartz.dart';
import 'package:fintools/domain/core/constant/app_endpoint.dart';
import 'package:fintools/domain/core/exceptions/exceptions.dart';
import 'package:fintools/domain/core/failure/generic_failure.dart';
import 'package:fintools/domain/core/interface/i_network_service.dart';
import 'package:fintools/domain/core/interface/i_storage.dart';
import 'package:fintools/domain/survey/interface/i_user_survey.dart';
import 'package:fintools/domain/survey/response/survey_login_response/survey_login_response.dart';
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
      /// TODO : save token and data, isLogin to local
      SurveyLoginResponse response = SurveyLoginResponse.fromJson(apiResult);
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
}
