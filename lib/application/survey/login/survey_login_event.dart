part of 'survey_login_bloc.dart';

@freezed
class SurveyLoginEvent with _$SurveyLoginEvent {
  const factory SurveyLoginEvent.onLogin(
      {required String nik, required String password}) = _OnLogin;
}
