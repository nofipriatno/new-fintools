import 'package:bloc/bloc.dart';
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
          print('print => onLoginTap');
        },
      );
    });
  }
}
