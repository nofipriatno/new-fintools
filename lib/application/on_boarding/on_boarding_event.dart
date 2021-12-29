part of 'on_boarding_bloc.dart';

@freezed
class OnBoardingEvent with _$OnBoardingEvent {
  const factory OnBoardingEvent.onSweepImage(int index) = _OnSweepImage;
  const factory OnBoardingEvent.onIconSettingTap() = _OnIconSettingTap;
  const factory OnBoardingEvent.onLoginTap(int index) = _OnLoginTap;
}
