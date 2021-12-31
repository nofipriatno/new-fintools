import 'package:bloc/bloc.dart';
import 'package:fintools/domain/core/constant/app_string.dart';
import 'package:fintools/domain/core/interface/i_database.dart';
import 'package:fintools/domain/core/interface/i_storage.dart';
import 'package:fintools/domain/survey/interface/i_check_latest_survey.dart';
import 'package:fintools/domain/survey/response/check_latest_survey_response/check_latest_survey_response.dart';
import 'package:fintools/utilities/app_data.dart';
import 'package:fintools/utilities/i10n/l10n.dart';
import 'package:fintools/utilities/utilities.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'interceptor_bloc.freezed.dart';

part 'interceptor_event.dart';

part 'interceptor_state.dart';

@injectable
class InterceptorBloc extends Bloc<InterceptorEvent, InterceptorState> {
  final ICheckLatestSurveyFacade _surveyFacade;
  final IStorage _storage;
  final IDatabase _database;

  InterceptorBloc(this._storage, this._surveyFacade, this._database)
      : super(const _Initial()) {
    on<InterceptorEvent>((event, emit) async {
      await event.map(
        onRetry: (e) async {},
        onInitialize: (e) async {
          emit(const _Loading());
          final _box = await _storage.openBox(StorageConstants.locale);
          String? appProduct =
              _storage.getString(_box, key: AppString.appProduct);
          if (appProduct == I10n.current.product_key_3) {
            final latest = await _surveyFacade.getLatest();
            final data = latest.fold((l) => null, (data) => data);
            await _checkLocalData(data);
            await _storage.close(_box);
            emit(_FetchSuccess(appProduct!));
          } else {
            await _storage.close(_box);
            emit(_FetchSuccess(appProduct!));
          }
        },
      );
    });
  }

  Future<void> _checkLocalData(CheckLatestSurveyResponse? data) async {
    AppData appData = AppData(storage: _storage);
    var localFormUpload = await appData.surveyFormUpload;
    var localFormDetail = await appData.surveyFormDetailUpload;
    var localQuisioner = await appData.surveyQuisioner;
    var localQuisionerDetail = await appData.surveyQuisionerDetail;
    var localZipcode = await appData.surveyZipcode;

    if (_dateValidation(data?.formUpdate, localFormUpload)) {
      var result = await _surveyFacade.getFormUpload();
      if (result.isRight()) {
        AppData(storage: _storage).saveSingleFormLatestMaster(data!);
      }
    }

    if (_dateValidation(data?.formDetailUpdate, localFormDetail)) {
      /// TODO : belum ada API nya
    }

    if (_dateValidation(data?.quisionerUpdate, localQuisioner)) {
      var result = await _surveyFacade.getFormQuisioner();
      if (result.isRight()) {
        AppData(storage: _storage).saveSingleQuisionerLatestMaster(data!);
      }
    }

    if (_dateValidation(data?.quisionerDetailUpdate, localQuisionerDetail)) {
      /// TODO : belum ada API nya
    }

    if (_dateValidation(data?.zipcodeUpdate, localZipcode)) {
      var result = await _surveyFacade.getZipcode();
      if (result.isRight()) {
        AppData(storage: _storage).saveSingleZipcodeLatestMaster(data!);
      }
    }
  }

  bool _dateValidation(DateTime? first, String? second) {
    return AppUtils.isAfter(AppUtils.normalizeDateTime(first),
        AppUtils.convertStringToDate(second));
  }
}
