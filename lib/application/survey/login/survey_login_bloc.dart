import 'package:bloc/bloc.dart';
import 'package:fintools/domain/survey/interface/i_user_survey.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'survey_login_bloc.freezed.dart';

part 'survey_login_event.dart';

part 'survey_login_state.dart';

@injectable
class SurveyLoginBloc extends Bloc<SurveyLoginEvent, SurveyLoginState> {
  final IUserSurvey _iUserSurvey;

  SurveyLoginBloc(this._iUserSurvey) : super(const _Initial()) {
    on<SurveyLoginEvent>((event, emit) async {
      await event.map(onLogin: (e) async {
        emit(const _Loading());
        try {
          final request = await _iUserSurvey.surveyLogin(
              username: e.nik, password: e.password);
          if (request.isRight()) {
            emit(const _LoginSuccess());
          } else {
            emit(const _LoginFailed());
          }
        } catch (e) {
          emit(const _LoginFailed());
        }
      });
    });
  }
}
