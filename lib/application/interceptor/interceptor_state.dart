part of 'interceptor_bloc.dart';

@freezed
class InterceptorState with _$InterceptorState {
  const factory InterceptorState.initial() = _Initial;
  const factory InterceptorState.retrySuccess() = _RetrySuccess;
  const factory InterceptorState.fetchSuccess() = _FetchSuccess;
}