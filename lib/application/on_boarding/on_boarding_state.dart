part of 'on_boarding_bloc.dart';

@freezed
class OnBoardingState with _$OnBoardingState {
  const factory OnBoardingState.initial() = _Initial;

  const factory OnBoardingState.changeActiveIndexSuccess(int index) =
      _ChangeActiveIndexSuccess;

  const factory OnBoardingState.onSettingTapSuccess() = _OnSettingTapSuccess;
  const factory OnBoardingState.onProductSelect(String product) = _OnProductSelect;
}
