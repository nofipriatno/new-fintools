part of 'app_preferences_bloc.dart';

@freezed
class AppPreferencesEvent with _$AppPreferencesEvent {
  const factory AppPreferencesEvent.onLanguageChanged() = _OnLanguageChanged;

  const factory AppPreferencesEvent.onCheckedLogin() = _OnCheckedLogin;
}
