part of 'interceptor_bloc.dart';

@freezed
class InterceptorState with _$InterceptorState {
  const factory InterceptorState.initial() = _Initial;
  const factory InterceptorState.retrySuccess(String product) = _RetrySuccess;
  const factory InterceptorState.fetchSuccess(String product) = _FetchSuccess;
  const factory InterceptorState.loading() = _Loading;
}