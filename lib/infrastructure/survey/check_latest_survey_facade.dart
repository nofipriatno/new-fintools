import 'package:dartz/dartz.dart';
import 'package:fintools/domain/core/failure/generic_failure.dart';
import 'package:fintools/domain/core/interface/i_network_service.dart';
import 'package:fintools/domain/core/interface/i_storage.dart';
import 'package:fintools/domain/survey/interface/i_check_latest_survey.dart';
import 'package:fintools/domain/survey/response/check_latest_survey_response/check_latest_survey_response.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICheckLatestSurveyFacade)
class CheckLatestSurveyFacade implements ICheckLatestSurveyFacade {
  final INetworkService _networkService;
  final IStorage _storage;

  CheckLatestSurveyFacade(this._networkService, this._storage);

  @override
  Future<Either<GenericFailure, CheckLatestSurveyResponse>> getLatest() {
    throw UnimplementedError();
  }
}
