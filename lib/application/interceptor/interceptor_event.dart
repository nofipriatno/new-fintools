part of 'interceptor_bloc.dart';

@freezed
class InterceptorEvent with _$InterceptorEvent {
  const factory InterceptorEvent.onInitialize() = _OnInitialize;
  const factory InterceptorEvent.onRetry() = _OnRetry;
}
