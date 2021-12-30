part of 'interceptor_bloc.dart';

@freezed
class InterceptorEvent with _$InterceptorEvent {
  const factory InterceptorEvent.onSweepImage(int index) = _OnSweepImage;
  const factory InterceptorEvent.onIconSettingTap() = _OnIconSettingTap;
  const factory InterceptorEvent.onLoginTap(int index) = _OnLoginTap;
}
