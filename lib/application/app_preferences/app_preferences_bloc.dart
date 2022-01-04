import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fintools/domain/core/constant/app_string.dart';
import 'package:fintools/domain/core/interface/i_storage.dart';
import 'package:fintools/utilities/i10n/l10n.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_preferences_bloc.freezed.dart';

part 'app_preferences_event.dart';

part 'app_preferences_state.dart';

@injectable
class AppPreferencesBloc
    extends Bloc<AppPreferencesEvent, AppPreferencesState> {
  final IStorage _storage;

  AppPreferencesBloc(this._storage) : super(const _Initial()) {
    on<AppPreferencesEvent>((event, emit) async {
      await event.map(
        onLanguageChanged: (e) async {},
        onCheckedLogin: (e) async {
          bool isLogin = false;
          final _localeBox = await  _storage.openBox(StorageConstants.locale);
          final _product =
           _storage.getString(_localeBox, key: AppString.appProduct);
          if (_product == I10n.current.product_key_3) {
            //survey
            final _surveyBox =
            await  _storage.openBox(StorageConstants.userSurvey);
            isLogin = await _storage.getBool(_surveyBox, key: AppString.surveyIsLoginKey);
            await  _storage.close(_surveyBox);
          } else if (_product == I10n.current.product_key_1) {
            //iprove
          } else if (_product == I10n.current.product_key_2) {
            //collection
          }
          await  _storage.close(_localeBox);
        },
      );
    });
  }
}
