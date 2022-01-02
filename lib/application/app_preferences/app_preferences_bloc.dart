import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_preferences_bloc.freezed.dart';

part 'app_preferences_event.dart';

part 'app_preferences_state.dart';

@injectable
class AppPreferencesBloc
    extends Bloc<AppPreferencesEvent, AppPreferencesState> {
  AppPreferencesBloc() : super(const _Initial()) {
    on<AppPreferencesEvent>((event, emit) async {
      await event.map(
        onLanguageChanged: (e) async {},
        onCheckedLogin: (e) async {

        },
      );
    });
  }
}
