// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'interceptor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InterceptorEventTearOff {
  const _$InterceptorEventTearOff();

  _OnInitialize onInitialize() {
    return const _OnInitialize();
  }

  _OnRetry onRetry() {
    return const _OnRetry();
  }
}

/// @nodoc
const $InterceptorEvent = _$InterceptorEventTearOff();

/// @nodoc
mixin _$InterceptorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onInitialize,
    required TResult Function() onRetry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onInitialize,
    TResult Function()? onRetry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInitialize,
    TResult Function()? onRetry,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInitialize value) onInitialize,
    required TResult Function(_OnRetry value) onRetry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnInitialize value)? onInitialize,
    TResult Function(_OnRetry value)? onRetry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInitialize value)? onInitialize,
    TResult Function(_OnRetry value)? onRetry,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterceptorEventCopyWith<$Res> {
  factory $InterceptorEventCopyWith(
          InterceptorEvent value, $Res Function(InterceptorEvent) then) =
      _$InterceptorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InterceptorEventCopyWithImpl<$Res>
    implements $InterceptorEventCopyWith<$Res> {
  _$InterceptorEventCopyWithImpl(this._value, this._then);

  final InterceptorEvent _value;
  // ignore: unused_field
  final $Res Function(InterceptorEvent) _then;
}

/// @nodoc
abstract class _$OnInitializeCopyWith<$Res> {
  factory _$OnInitializeCopyWith(
          _OnInitialize value, $Res Function(_OnInitialize) then) =
      __$OnInitializeCopyWithImpl<$Res>;
}

/// @nodoc
class __$OnInitializeCopyWithImpl<$Res>
    extends _$InterceptorEventCopyWithImpl<$Res>
    implements _$OnInitializeCopyWith<$Res> {
  __$OnInitializeCopyWithImpl(
      _OnInitialize _value, $Res Function(_OnInitialize) _then)
      : super(_value, (v) => _then(v as _OnInitialize));

  @override
  _OnInitialize get _value => super._value as _OnInitialize;
}

/// @nodoc

class _$_OnInitialize implements _OnInitialize {
  const _$_OnInitialize();

  @override
  String toString() {
    return 'InterceptorEvent.onInitialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _OnInitialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onInitialize,
    required TResult Function() onRetry,
  }) {
    return onInitialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onInitialize,
    TResult Function()? onRetry,
  }) {
    return onInitialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInitialize,
    TResult Function()? onRetry,
    required TResult orElse(),
  }) {
    if (onInitialize != null) {
      return onInitialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInitialize value) onInitialize,
    required TResult Function(_OnRetry value) onRetry,
  }) {
    return onInitialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnInitialize value)? onInitialize,
    TResult Function(_OnRetry value)? onRetry,
  }) {
    return onInitialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInitialize value)? onInitialize,
    TResult Function(_OnRetry value)? onRetry,
    required TResult orElse(),
  }) {
    if (onInitialize != null) {
      return onInitialize(this);
    }
    return orElse();
  }
}

abstract class _OnInitialize implements InterceptorEvent {
  const factory _OnInitialize() = _$_OnInitialize;
}

/// @nodoc
abstract class _$OnRetryCopyWith<$Res> {
  factory _$OnRetryCopyWith(_OnRetry value, $Res Function(_OnRetry) then) =
      __$OnRetryCopyWithImpl<$Res>;
}

/// @nodoc
class __$OnRetryCopyWithImpl<$Res> extends _$InterceptorEventCopyWithImpl<$Res>
    implements _$OnRetryCopyWith<$Res> {
  __$OnRetryCopyWithImpl(_OnRetry _value, $Res Function(_OnRetry) _then)
      : super(_value, (v) => _then(v as _OnRetry));

  @override
  _OnRetry get _value => super._value as _OnRetry;
}

/// @nodoc

class _$_OnRetry implements _OnRetry {
  const _$_OnRetry();

  @override
  String toString() {
    return 'InterceptorEvent.onRetry()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _OnRetry);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onInitialize,
    required TResult Function() onRetry,
  }) {
    return onRetry();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onInitialize,
    TResult Function()? onRetry,
  }) {
    return onRetry?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInitialize,
    TResult Function()? onRetry,
    required TResult orElse(),
  }) {
    if (onRetry != null) {
      return onRetry();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInitialize value) onInitialize,
    required TResult Function(_OnRetry value) onRetry,
  }) {
    return onRetry(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnInitialize value)? onInitialize,
    TResult Function(_OnRetry value)? onRetry,
  }) {
    return onRetry?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInitialize value)? onInitialize,
    TResult Function(_OnRetry value)? onRetry,
    required TResult orElse(),
  }) {
    if (onRetry != null) {
      return onRetry(this);
    }
    return orElse();
  }
}

abstract class _OnRetry implements InterceptorEvent {
  const factory _OnRetry() = _$_OnRetry;
}

/// @nodoc
class _$InterceptorStateTearOff {
  const _$InterceptorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _RetrySuccess retrySuccess(String product) {
    return _RetrySuccess(
      product,
    );
  }

  _FetchSuccess fetchSuccess(String product) {
    return _FetchSuccess(
      product,
    );
  }

  _Loading loading() {
    return const _Loading();
  }
}

/// @nodoc
const $InterceptorState = _$InterceptorStateTearOff();

/// @nodoc
mixin _$InterceptorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String product) retrySuccess,
    required TResult Function(String product) fetchSuccess,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String product)? retrySuccess,
    TResult Function(String product)? fetchSuccess,
    TResult Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String product)? retrySuccess,
    TResult Function(String product)? fetchSuccess,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RetrySuccess value) retrySuccess,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RetrySuccess value)? retrySuccess,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RetrySuccess value)? retrySuccess,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterceptorStateCopyWith<$Res> {
  factory $InterceptorStateCopyWith(
          InterceptorState value, $Res Function(InterceptorState) then) =
      _$InterceptorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InterceptorStateCopyWithImpl<$Res>
    implements $InterceptorStateCopyWith<$Res> {
  _$InterceptorStateCopyWithImpl(this._value, this._then);

  final InterceptorState _value;
  // ignore: unused_field
  final $Res Function(InterceptorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$InterceptorStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'InterceptorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String product) retrySuccess,
    required TResult Function(String product) fetchSuccess,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String product)? retrySuccess,
    TResult Function(String product)? fetchSuccess,
    TResult Function()? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String product)? retrySuccess,
    TResult Function(String product)? fetchSuccess,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RetrySuccess value) retrySuccess,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_Loading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RetrySuccess value)? retrySuccess,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_Loading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RetrySuccess value)? retrySuccess,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements InterceptorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$RetrySuccessCopyWith<$Res> {
  factory _$RetrySuccessCopyWith(
          _RetrySuccess value, $Res Function(_RetrySuccess) then) =
      __$RetrySuccessCopyWithImpl<$Res>;
  $Res call({String product});
}

/// @nodoc
class __$RetrySuccessCopyWithImpl<$Res>
    extends _$InterceptorStateCopyWithImpl<$Res>
    implements _$RetrySuccessCopyWith<$Res> {
  __$RetrySuccessCopyWithImpl(
      _RetrySuccess _value, $Res Function(_RetrySuccess) _then)
      : super(_value, (v) => _then(v as _RetrySuccess));

  @override
  _RetrySuccess get _value => super._value as _RetrySuccess;

  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(_RetrySuccess(
      product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RetrySuccess implements _RetrySuccess {
  const _$_RetrySuccess(this.product);

  @override
  final String product;

  @override
  String toString() {
    return 'InterceptorState.retrySuccess(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RetrySuccess &&
            const DeepCollectionEquality().equals(other.product, product));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(product));

  @JsonKey(ignore: true)
  @override
  _$RetrySuccessCopyWith<_RetrySuccess> get copyWith =>
      __$RetrySuccessCopyWithImpl<_RetrySuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String product) retrySuccess,
    required TResult Function(String product) fetchSuccess,
    required TResult Function() loading,
  }) {
    return retrySuccess(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String product)? retrySuccess,
    TResult Function(String product)? fetchSuccess,
    TResult Function()? loading,
  }) {
    return retrySuccess?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String product)? retrySuccess,
    TResult Function(String product)? fetchSuccess,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (retrySuccess != null) {
      return retrySuccess(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RetrySuccess value) retrySuccess,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_Loading value) loading,
  }) {
    return retrySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RetrySuccess value)? retrySuccess,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_Loading value)? loading,
  }) {
    return retrySuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RetrySuccess value)? retrySuccess,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (retrySuccess != null) {
      return retrySuccess(this);
    }
    return orElse();
  }
}

abstract class _RetrySuccess implements InterceptorState {
  const factory _RetrySuccess(String product) = _$_RetrySuccess;

  String get product;
  @JsonKey(ignore: true)
  _$RetrySuccessCopyWith<_RetrySuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FetchSuccessCopyWith<$Res> {
  factory _$FetchSuccessCopyWith(
          _FetchSuccess value, $Res Function(_FetchSuccess) then) =
      __$FetchSuccessCopyWithImpl<$Res>;
  $Res call({String product});
}

/// @nodoc
class __$FetchSuccessCopyWithImpl<$Res>
    extends _$InterceptorStateCopyWithImpl<$Res>
    implements _$FetchSuccessCopyWith<$Res> {
  __$FetchSuccessCopyWithImpl(
      _FetchSuccess _value, $Res Function(_FetchSuccess) _then)
      : super(_value, (v) => _then(v as _FetchSuccess));

  @override
  _FetchSuccess get _value => super._value as _FetchSuccess;

  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(_FetchSuccess(
      product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchSuccess implements _FetchSuccess {
  const _$_FetchSuccess(this.product);

  @override
  final String product;

  @override
  String toString() {
    return 'InterceptorState.fetchSuccess(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FetchSuccess &&
            const DeepCollectionEquality().equals(other.product, product));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(product));

  @JsonKey(ignore: true)
  @override
  _$FetchSuccessCopyWith<_FetchSuccess> get copyWith =>
      __$FetchSuccessCopyWithImpl<_FetchSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String product) retrySuccess,
    required TResult Function(String product) fetchSuccess,
    required TResult Function() loading,
  }) {
    return fetchSuccess(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String product)? retrySuccess,
    TResult Function(String product)? fetchSuccess,
    TResult Function()? loading,
  }) {
    return fetchSuccess?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String product)? retrySuccess,
    TResult Function(String product)? fetchSuccess,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (fetchSuccess != null) {
      return fetchSuccess(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RetrySuccess value) retrySuccess,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_Loading value) loading,
  }) {
    return fetchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RetrySuccess value)? retrySuccess,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_Loading value)? loading,
  }) {
    return fetchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RetrySuccess value)? retrySuccess,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (fetchSuccess != null) {
      return fetchSuccess(this);
    }
    return orElse();
  }
}

abstract class _FetchSuccess implements InterceptorState {
  const factory _FetchSuccess(String product) = _$_FetchSuccess;

  String get product;
  @JsonKey(ignore: true)
  _$FetchSuccessCopyWith<_FetchSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$InterceptorStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'InterceptorState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String product) retrySuccess,
    required TResult Function(String product) fetchSuccess,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String product)? retrySuccess,
    TResult Function(String product)? fetchSuccess,
    TResult Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String product)? retrySuccess,
    TResult Function(String product)? fetchSuccess,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RetrySuccess value) retrySuccess,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RetrySuccess value)? retrySuccess,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RetrySuccess value)? retrySuccess,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements InterceptorState {
  const factory _Loading() = _$_Loading;
}
