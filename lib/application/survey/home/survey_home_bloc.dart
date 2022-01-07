import 'package:bloc/bloc.dart';
import 'package:fintools/domain/core/constant/app_string.dart';
import 'package:fintools/domain/core/interface/i_database.dart';
import 'package:fintools/domain/core/interface/i_storage.dart';
import 'package:fintools/domain/survey/interface/i_survey.dart';
import 'package:fintools/domain/survey/response/survey_login_response/survey_login_response.dart';
import 'package:fintools/domain/survey/response/survey_task_list_response/survey_task_list_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'survey_home_bloc.freezed.dart';

part 'survey_home_event.dart';

part 'survey_home_state.dart';

@injectable
class SurveyHomeBloc extends Bloc<SurveyHomeEvent, SurveyHomeState> {
  final ISurvey _survey;
  final IStorage _storage;
  final IDatabase _database;

  SurveyHomeBloc(this._survey, this._storage, this._database)
      : super(const _Initial()) {
    on<SurveyHomeEvent>((event, emit) async {
      await event.map(
        onInitialize: (e) async {
          emit(const _FetchAllLoading());
          final box = await _storage.openBox(StorageConstants.userSurvey);
          final credential =
              await _storage.getJson(box, key: AppString.surveyCredentialKey);
          UserData user = UserData.fromJson(credential['data']);
          final result = await _survey.getTask(nik: user.nik ?? '');
          result.fold(
            (fail) => emit(const _FetchAllFailed()),
            (success) => emit(
              _FetchAllSuccess(
                  tasks: success.data,
                  upcomingTask: success.data.first,
                  user: user),
            ),
          );
        },
        onRefreshTask: (e) async {},
        onRefreshHistory: (e) async {},
        onSelectedTask: (e) async {
          emit(const _Initial());
          emit(
            _NavigateToSelectedTask(task: e.task),
          );
        },
      );
    });
  }
}
