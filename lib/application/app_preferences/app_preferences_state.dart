part of 'app_preferences_bloc.dart';

@freezed
class AppPreferencesState with _$AppPreferencesState {
  const factory AppPreferencesState.initial() = _Initial;

  const factory AppPreferencesState.checkSignInUserSuccess() = _CheckSignInUser;

  const factory AppPreferencesState.changedLanguageSuccess() =
      _ChangedLanguageSuccess;

  const factory AppPreferencesState.loading() = _Loading;
}
