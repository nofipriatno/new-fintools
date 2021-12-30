import 'package:bloc/bloc.dart';
import 'package:fintools/domain/core/constant/app_string.dart';
import 'package:fintools/domain/core/interface/i_storage.dart';
import 'package:fintools/utilities/i10n/l10n.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'on_boarding_bloc.freezed.dart';

part 'on_boarding_event.dart';

part 'on_boarding_state.dart';

@injectable
class OnBoardingBloc extends Bloc<OnBoardingEvent, OnBoardingState> {
  final IStorage _storage;

  OnBoardingBloc(this._storage) : super(const _Initial()) {
    on<OnBoardingEvent>((event, emit) async {
      await event.map(
        onSweepImage: (e) async {
          emit(_ChangeActiveIndexSuccess(e.index));
        },
        onIconSettingTap: (e) async {
          emit(const _Initial());
          emit(const _OnSettingTapSuccess());
        },
        onLoginTap: (e) async {
          emit(const _Initial());
          late String _product;
          switch (e.index) {
            case 0:
              _product = I10n.current.product_key_2;
              break;
            case 1:
              _product = I10n.current.product_key_1;
              break;
            case 2:
              _product = I10n.current.product_key_3;
              break;
          }
          emit(_OnProductSelect(_product));
        },
        onSaveUrl: (e) async {
          emit(const _Initial());
          final _box = await _storage.openBox(StorageConstants.locale);
          await _storage.putString(_box, key: AppString.appUrl, value: e.url);
          _storage.close(_box);
          emit(_OnSavedUrlSuccess(e.url));
        },
      );
    });
  }
}
