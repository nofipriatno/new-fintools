import 'package:bloc/bloc.dart';
import 'package:fintools/domain/core/constant/app_string.dart';
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

  InterceptorBloc(this._storage, this._surveyFacade) : super(const _Initial()) {
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
      await _surveyFacade.getFormUpload();
    }

    if(_dateValidation(data?.formDetailUpdate, localFormDetail)){
      /// TODO : belum ada API nya
    }

    if(_dateValidation(data?.quisionerUpdate, localQuisioner)) {
      await _surveyFacade.getFormQuisioner();
    }

    if(_dateValidation(data?.quisionerDetailUpdate, localQuisionerDetail)){
      /// TODO : belum ada API nya
    }

    if(_dateValidation(data?.zipcodeUpdate, localZipcode)){

    }

    AppData(storage: _storage).saveSurveyLatestMaster(data!);
  }

  bool _dateValidation(DateTime? first, String? second) {
    return AppUtils.isAfter(AppUtils.normalizeDateTime(first),
        AppUtils.convertStringToDate(second));
  }
}
