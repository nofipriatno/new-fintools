import 'package:dartz/dartz.dart';
import 'package:fintools/domain/core/constant/app_endpoint.dart';
import 'package:fintools/domain/core/exceptions/exceptions.dart';
import 'package:fintools/domain/core/failure/generic_failure.dart';
import 'package:fintools/domain/core/interface/i_network_service.dart';
import 'package:fintools/domain/core/interface/i_storage.dart';
import 'package:fintools/domain/survey/interface/i_check_latest_survey.dart';
import 'package:fintools/domain/survey/response/check_latest_survey_response/check_latest_survey_response.dart';
import 'package:fintools/domain/survey/response/master_response/survey_form_upload_master_response.dart';
import 'package:fintools/utilities/app_data.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICheckLatestSurveyFacade)
class CheckLatestSurveyFacade implements ICheckLatestSurveyFacade {
  final INetworkService _networkService;
  final IStorage _storage;

  CheckLatestSurveyFacade(this._networkService, this._storage);

  @override
  Future<Either<GenericFailure, CheckLatestSurveyResponse>> getLatest() async {
    try {
      String apiUrl = AppEndpoint.surveyCheckingFormProcess;
      final apiResult = await _networkService.getHttp(path: apiUrl);
      CheckLatestSurveyResponse response =
      CheckLatestSurveyResponse.fromJson(apiResult);
      AppData(storage: _storage).saveSurveyLatestMaster(response);
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
  Future<Either<GenericFailure,
      SurveyFormUploadMasterResponse>> getFormUpload() async {
    try {
      String apiUrl = AppEndpoint.surveyFormUpload;
      final apiResult = await _networkService.getHttp(path: apiUrl);
      SurveyFormUploadMasterResponse response = SurveyFormUploadMasterResponse
          .fromJson(apiResult);
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
