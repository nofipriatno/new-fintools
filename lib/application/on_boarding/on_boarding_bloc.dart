import 'package:bloc/bloc.dart';
import 'package:fintools/utilities/i10n/l10n.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'on_boarding_bloc.freezed.dart';

part 'on_boarding_event.dart';

part 'on_boarding_state.dart';

@injectable
class OnBoardingBloc extends Bloc<OnBoardingEvent, OnBoardingState> {
  OnBoardingBloc() : super(const _Initial()) {
    on<OnBoardingEvent>((event, emit) {
      event.map(
        onSweepImage: (e) async {
          print('print => onSweepImage');
          emit(_ChangeActiveIndexSuccess(e.index));
        },
        onIconSettingTap: (e) async {
          emit(const _Initial());
          print('print => hello');
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
      );
    });
  }
}
