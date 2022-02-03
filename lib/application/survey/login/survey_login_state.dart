part of 'survey_login_bloc.dart';

@freezed
class SurveyLoginState with _$SurveyLoginState {
  const factory SurveyLoginState.initial() = _Initial;

  const factory SurveyLoginState.loading() = _Loading;

  const factory SurveyLoginState.loginSuccess() = _LoginSuccess;

  const factory SurveyLoginState.loginFailed() = _LoginFailed;
}
