// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'survey_login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SurveyLoginEventTearOff {
  const _$SurveyLoginEventTearOff();

  _OnLogin onLogin({required String nik, required String password}) {
    return _OnLogin(
      nik: nik,
      password: password,
    );
  }
}

/// @nodoc
const $SurveyLoginEvent = _$SurveyLoginEventTearOff();

/// @nodoc
mixin _$SurveyLoginEvent {
  String get nik => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nik, String password) onLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nik, String password)? onLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nik, String password)? onLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnLogin value) onLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnLogin value)? onLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnLogin value)? onLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SurveyLoginEventCopyWith<SurveyLoginEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyLoginEventCopyWith<$Res> {
  factory $SurveyLoginEventCopyWith(
          SurveyLoginEvent value, $Res Function(SurveyLoginEvent) then) =
      _$SurveyLoginEventCopyWithImpl<$Res>;
  $Res call({String nik, String password});
}

/// @nodoc
class _$SurveyLoginEventCopyWithImpl<$Res>
    implements $SurveyLoginEventCopyWith<$Res> {
  _$SurveyLoginEventCopyWithImpl(this._value, this._then);

  final SurveyLoginEvent _value;
  // ignore: unused_field
  final $Res Function(SurveyLoginEvent) _then;

  @override
  $Res call({
    Object? nik = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      nik: nik == freezed
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$OnLoginCopyWith<$Res>
    implements $SurveyLoginEventCopyWith<$Res> {
  factory _$OnLoginCopyWith(_OnLogin value, $Res Function(_OnLogin) then) =
      __$OnLoginCopyWithImpl<$Res>;
  @override
  $Res call({String nik, String password});
}

/// @nodoc
class __$OnLoginCopyWithImpl<$Res> extends _$SurveyLoginEventCopyWithImpl<$Res>
    implements _$OnLoginCopyWith<$Res> {
  __$OnLoginCopyWithImpl(_OnLogin _value, $Res Function(_OnLogin) _then)
      : super(_value, (v) => _then(v as _OnLogin));

  @override
  _OnLogin get _value => super._value as _OnLogin;

  @override
  $Res call({
    Object? nik = freezed,
    Object? password = freezed,
  }) {
    return _then(_OnLogin(
      nik: nik == freezed
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnLogin implements _OnLogin {
  const _$_OnLogin({required this.nik, required this.password});

  @override
  final String nik;
  @override
  final String password;

  @override
  String toString() {
    return 'SurveyLoginEvent.onLogin(nik: $nik, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnLogin &&
            const DeepCollectionEquality().equals(other.nik, nik) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(nik),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$OnLoginCopyWith<_OnLogin> get copyWith =>
      __$OnLoginCopyWithImpl<_OnLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nik, String password) onLogin,
  }) {
    return onLogin(nik, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nik, String password)? onLogin,
  }) {
    return onLogin?.call(nik, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nik, String password)? onLogin,
    required TResult orElse(),
  }) {
    if (onLogin != null) {
      return onLogin(nik, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnLogin value) onLogin,
  }) {
    return onLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnLogin value)? onLogin,
  }) {
    return onLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnLogin value)? onLogin,
    required TResult orElse(),
  }) {
    if (onLogin != null) {
      return onLogin(this);
    }
    return orElse();
  }
}

abstract class _OnLogin implements SurveyLoginEvent {
  const factory _OnLogin({required String nik, required String password}) =
      _$_OnLogin;

  @override
  String get nik;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$OnLoginCopyWith<_OnLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SurveyLoginStateTearOff {
  const _$SurveyLoginStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _LoginSuccess loginSuccess() {
    return const _LoginSuccess();
  }

  _LoginFailed loginFailed() {
    return const _LoginFailed();
  }
}

/// @nodoc
const $SurveyLoginState = _$SurveyLoginStateTearOff();

/// @nodoc
mixin _$SurveyLoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loginSuccess,
    required TResult Function() loginFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loginSuccess,
    TResult Function()? loginFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loginSuccess,
    TResult Function()? loginFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailed value) loginFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailed value)? loginFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailed value)? loginFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyLoginStateCopyWith<$Res> {
  factory $SurveyLoginStateCopyWith(
          SurveyLoginState value, $Res Function(SurveyLoginState) then) =
      _$SurveyLoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SurveyLoginStateCopyWithImpl<$Res>
    implements $SurveyLoginStateCopyWith<$Res> {
  _$SurveyLoginStateCopyWithImpl(this._value, this._then);

  final SurveyLoginState _value;
  // ignore: unused_field
  final $Res Function(SurveyLoginState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SurveyLoginStateCopyWithImpl<$Res>
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
    return 'SurveyLoginState.initial()';
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
    required TResult Function() loading,
    required TResult Function() loginSuccess,
    required TResult Function() loginFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loginSuccess,
    TResult Function()? loginFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loginSuccess,
    TResult Function()? loginFailed,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailed value) loginFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailed value)? loginFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailed value)? loginFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SurveyLoginState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$SurveyLoginStateCopyWithImpl<$Res>
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
    return 'SurveyLoginState.loading()';
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
    required TResult Function() loading,
    required TResult Function() loginSuccess,
    required TResult Function() loginFailed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loginSuccess,
    TResult Function()? loginFailed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loginSuccess,
    TResult Function()? loginFailed,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailed value) loginFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailed value)? loginFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailed value)? loginFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SurveyLoginState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoginSuccessCopyWith<$Res> {
  factory _$LoginSuccessCopyWith(
          _LoginSuccess value, $Res Function(_LoginSuccess) then) =
      __$LoginSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoginSuccessCopyWithImpl<$Res>
    extends _$SurveyLoginStateCopyWithImpl<$Res>
    implements _$LoginSuccessCopyWith<$Res> {
  __$LoginSuccessCopyWithImpl(
      _LoginSuccess _value, $Res Function(_LoginSuccess) _then)
      : super(_value, (v) => _then(v as _LoginSuccess));

  @override
  _LoginSuccess get _value => super._value as _LoginSuccess;
}

/// @nodoc

class _$_LoginSuccess implements _LoginSuccess {
  const _$_LoginSuccess();

  @override
  String toString() {
    return 'SurveyLoginState.loginSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoginSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loginSuccess,
    required TResult Function() loginFailed,
  }) {
    return loginSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loginSuccess,
    TResult Function()? loginFailed,
  }) {
    return loginSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loginSuccess,
    TResult Function()? loginFailed,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailed value) loginFailed,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailed value)? loginFailed,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailed value)? loginFailed,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoginSuccess implements SurveyLoginState {
  const factory _LoginSuccess() = _$_LoginSuccess;
}

/// @nodoc
abstract class _$LoginFailedCopyWith<$Res> {
  factory _$LoginFailedCopyWith(
          _LoginFailed value, $Res Function(_LoginFailed) then) =
      __$LoginFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoginFailedCopyWithImpl<$Res>
    extends _$SurveyLoginStateCopyWithImpl<$Res>
    implements _$LoginFailedCopyWith<$Res> {
  __$LoginFailedCopyWithImpl(
      _LoginFailed _value, $Res Function(_LoginFailed) _then)
      : super(_value, (v) => _then(v as _LoginFailed));

  @override
  _LoginFailed get _value => super._value as _LoginFailed;
}

/// @nodoc

class _$_LoginFailed implements _LoginFailed {
  const _$_LoginFailed();

  @override
  String toString() {
    return 'SurveyLoginState.loginFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoginFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loginSuccess,
    required TResult Function() loginFailed,
  }) {
    return loginFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loginSuccess,
    TResult Function()? loginFailed,
  }) {
    return loginFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loginSuccess,
    TResult Function()? loginFailed,
    required TResult orElse(),
  }) {
    if (loginFailed != null) {
      return loginFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailed value) loginFailed,
  }) {
    return loginFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailed value)? loginFailed,
  }) {
    return loginFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailed value)? loginFailed,
    required TResult orElse(),
  }) {
    if (loginFailed != null) {
      return loginFailed(this);
    }
    return orElse();
  }
}

abstract class _LoginFailed implements SurveyLoginState {
  const factory _LoginFailed() = _$_LoginFailed;
}
