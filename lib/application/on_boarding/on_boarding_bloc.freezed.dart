// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'on_boarding_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OnBoardingEventTearOff {
  const _$OnBoardingEventTearOff();

  _OnSweepImage onSweepImage(int index) {
    return _OnSweepImage(
      index,
    );
  }

  _OnIconSettingTap onIconSettingTap() {
    return const _OnIconSettingTap();
  }

  _OnLoginTap onLoginTap(int index) {
    return _OnLoginTap(
      index,
    );
  }
}

/// @nodoc
const $OnBoardingEvent = _$OnBoardingEventTearOff();

/// @nodoc
mixin _$OnBoardingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) onSweepImage,
    required TResult Function() onIconSettingTap,
    required TResult Function(int index) onLoginTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index)? onSweepImage,
    TResult Function()? onIconSettingTap,
    TResult Function(int index)? onLoginTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? onSweepImage,
    TResult Function()? onIconSettingTap,
    TResult Function(int index)? onLoginTap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnSweepImage value) onSweepImage,
    required TResult Function(_OnIconSettingTap value) onIconSettingTap,
    required TResult Function(_OnLoginTap value) onLoginTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnSweepImage value)? onSweepImage,
    TResult Function(_OnIconSettingTap value)? onIconSettingTap,
    TResult Function(_OnLoginTap value)? onLoginTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnSweepImage value)? onSweepImage,
    TResult Function(_OnIconSettingTap value)? onIconSettingTap,
    TResult Function(_OnLoginTap value)? onLoginTap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnBoardingEventCopyWith<$Res> {
  factory $OnBoardingEventCopyWith(
          OnBoardingEvent value, $Res Function(OnBoardingEvent) then) =
      _$OnBoardingEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnBoardingEventCopyWithImpl<$Res>
    implements $OnBoardingEventCopyWith<$Res> {
  _$OnBoardingEventCopyWithImpl(this._value, this._then);

  final OnBoardingEvent _value;
  // ignore: unused_field
  final $Res Function(OnBoardingEvent) _then;
}

/// @nodoc
abstract class _$OnSweepImageCopyWith<$Res> {
  factory _$OnSweepImageCopyWith(
          _OnSweepImage value, $Res Function(_OnSweepImage) then) =
      __$OnSweepImageCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$OnSweepImageCopyWithImpl<$Res>
    extends _$OnBoardingEventCopyWithImpl<$Res>
    implements _$OnSweepImageCopyWith<$Res> {
  __$OnSweepImageCopyWithImpl(
      _OnSweepImage _value, $Res Function(_OnSweepImage) _then)
      : super(_value, (v) => _then(v as _OnSweepImage));

  @override
  _OnSweepImage get _value => super._value as _OnSweepImage;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_OnSweepImage(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_OnSweepImage implements _OnSweepImage {
  const _$_OnSweepImage(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'OnBoardingEvent.onSweepImage(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnSweepImage &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$OnSweepImageCopyWith<_OnSweepImage> get copyWith =>
      __$OnSweepImageCopyWithImpl<_OnSweepImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) onSweepImage,
    required TResult Function() onIconSettingTap,
    required TResult Function(int index) onLoginTap,
  }) {
    return onSweepImage(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index)? onSweepImage,
    TResult Function()? onIconSettingTap,
    TResult Function(int index)? onLoginTap,
  }) {
    return onSweepImage?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? onSweepImage,
    TResult Function()? onIconSettingTap,
    TResult Function(int index)? onLoginTap,
    required TResult orElse(),
  }) {
    if (onSweepImage != null) {
      return onSweepImage(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnSweepImage value) onSweepImage,
    required TResult Function(_OnIconSettingTap value) onIconSettingTap,
    required TResult Function(_OnLoginTap value) onLoginTap,
  }) {
    return onSweepImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnSweepImage value)? onSweepImage,
    TResult Function(_OnIconSettingTap value)? onIconSettingTap,
    TResult Function(_OnLoginTap value)? onLoginTap,
  }) {
    return onSweepImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnSweepImage value)? onSweepImage,
    TResult Function(_OnIconSettingTap value)? onIconSettingTap,
    TResult Function(_OnLoginTap value)? onLoginTap,
    required TResult orElse(),
  }) {
    if (onSweepImage != null) {
      return onSweepImage(this);
    }
    return orElse();
  }
}

abstract class _OnSweepImage implements OnBoardingEvent {
  const factory _OnSweepImage(int index) = _$_OnSweepImage;

  int get index;
  @JsonKey(ignore: true)
  _$OnSweepImageCopyWith<_OnSweepImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnIconSettingTapCopyWith<$Res> {
  factory _$OnIconSettingTapCopyWith(
          _OnIconSettingTap value, $Res Function(_OnIconSettingTap) then) =
      __$OnIconSettingTapCopyWithImpl<$Res>;
}

/// @nodoc
class __$OnIconSettingTapCopyWithImpl<$Res>
    extends _$OnBoardingEventCopyWithImpl<$Res>
    implements _$OnIconSettingTapCopyWith<$Res> {
  __$OnIconSettingTapCopyWithImpl(
      _OnIconSettingTap _value, $Res Function(_OnIconSettingTap) _then)
      : super(_value, (v) => _then(v as _OnIconSettingTap));

  @override
  _OnIconSettingTap get _value => super._value as _OnIconSettingTap;
}

/// @nodoc

class _$_OnIconSettingTap implements _OnIconSettingTap {
  const _$_OnIconSettingTap();

  @override
  String toString() {
    return 'OnBoardingEvent.onIconSettingTap()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _OnIconSettingTap);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) onSweepImage,
    required TResult Function() onIconSettingTap,
    required TResult Function(int index) onLoginTap,
  }) {
    return onIconSettingTap();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index)? onSweepImage,
    TResult Function()? onIconSettingTap,
    TResult Function(int index)? onLoginTap,
  }) {
    return onIconSettingTap?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? onSweepImage,
    TResult Function()? onIconSettingTap,
    TResult Function(int index)? onLoginTap,
    required TResult orElse(),
  }) {
    if (onIconSettingTap != null) {
      return onIconSettingTap();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnSweepImage value) onSweepImage,
    required TResult Function(_OnIconSettingTap value) onIconSettingTap,
    required TResult Function(_OnLoginTap value) onLoginTap,
  }) {
    return onIconSettingTap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnSweepImage value)? onSweepImage,
    TResult Function(_OnIconSettingTap value)? onIconSettingTap,
    TResult Function(_OnLoginTap value)? onLoginTap,
  }) {
    return onIconSettingTap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnSweepImage value)? onSweepImage,
    TResult Function(_OnIconSettingTap value)? onIconSettingTap,
    TResult Function(_OnLoginTap value)? onLoginTap,
    required TResult orElse(),
  }) {
    if (onIconSettingTap != null) {
      return onIconSettingTap(this);
    }
    return orElse();
  }
}

abstract class _OnIconSettingTap implements OnBoardingEvent {
  const factory _OnIconSettingTap() = _$_OnIconSettingTap;
}

/// @nodoc
abstract class _$OnLoginTapCopyWith<$Res> {
  factory _$OnLoginTapCopyWith(
          _OnLoginTap value, $Res Function(_OnLoginTap) then) =
      __$OnLoginTapCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$OnLoginTapCopyWithImpl<$Res>
    extends _$OnBoardingEventCopyWithImpl<$Res>
    implements _$OnLoginTapCopyWith<$Res> {
  __$OnLoginTapCopyWithImpl(
      _OnLoginTap _value, $Res Function(_OnLoginTap) _then)
      : super(_value, (v) => _then(v as _OnLoginTap));

  @override
  _OnLoginTap get _value => super._value as _OnLoginTap;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_OnLoginTap(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_OnLoginTap implements _OnLoginTap {
  const _$_OnLoginTap(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'OnBoardingEvent.onLoginTap(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnLoginTap &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$OnLoginTapCopyWith<_OnLoginTap> get copyWith =>
      __$OnLoginTapCopyWithImpl<_OnLoginTap>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) onSweepImage,
    required TResult Function() onIconSettingTap,
    required TResult Function(int index) onLoginTap,
  }) {
    return onLoginTap(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index)? onSweepImage,
    TResult Function()? onIconSettingTap,
    TResult Function(int index)? onLoginTap,
  }) {
    return onLoginTap?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? onSweepImage,
    TResult Function()? onIconSettingTap,
    TResult Function(int index)? onLoginTap,
    required TResult orElse(),
  }) {
    if (onLoginTap != null) {
      return onLoginTap(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnSweepImage value) onSweepImage,
    required TResult Function(_OnIconSettingTap value) onIconSettingTap,
    required TResult Function(_OnLoginTap value) onLoginTap,
  }) {
    return onLoginTap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnSweepImage value)? onSweepImage,
    TResult Function(_OnIconSettingTap value)? onIconSettingTap,
    TResult Function(_OnLoginTap value)? onLoginTap,
  }) {
    return onLoginTap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnSweepImage value)? onSweepImage,
    TResult Function(_OnIconSettingTap value)? onIconSettingTap,
    TResult Function(_OnLoginTap value)? onLoginTap,
    required TResult orElse(),
  }) {
    if (onLoginTap != null) {
      return onLoginTap(this);
    }
    return orElse();
  }
}

abstract class _OnLoginTap implements OnBoardingEvent {
  const factory _OnLoginTap(int index) = _$_OnLoginTap;

  int get index;
  @JsonKey(ignore: true)
  _$OnLoginTapCopyWith<_OnLoginTap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$OnBoardingStateTearOff {
  const _$OnBoardingStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ChangeActiveIndexSuccess changeActiveIndexSuccess(int index) {
    return _ChangeActiveIndexSuccess(
      index,
    );
  }

  _OnSettingTapSuccess onSettingTapSuccess() {
    return const _OnSettingTapSuccess();
  }
}

/// @nodoc
const $OnBoardingState = _$OnBoardingStateTearOff();

/// @nodoc
mixin _$OnBoardingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) changeActiveIndexSuccess,
    required TResult Function() onSettingTapSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? changeActiveIndexSuccess,
    TResult Function()? onSettingTapSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? changeActiveIndexSuccess,
    TResult Function()? onSettingTapSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeActiveIndexSuccess value)
        changeActiveIndexSuccess,
    required TResult Function(_OnSettingTapSuccess value) onSettingTapSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeActiveIndexSuccess value)? changeActiveIndexSuccess,
    TResult Function(_OnSettingTapSuccess value)? onSettingTapSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeActiveIndexSuccess value)? changeActiveIndexSuccess,
    TResult Function(_OnSettingTapSuccess value)? onSettingTapSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnBoardingStateCopyWith<$Res> {
  factory $OnBoardingStateCopyWith(
          OnBoardingState value, $Res Function(OnBoardingState) then) =
      _$OnBoardingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnBoardingStateCopyWithImpl<$Res>
    implements $OnBoardingStateCopyWith<$Res> {
  _$OnBoardingStateCopyWithImpl(this._value, this._then);

  final OnBoardingState _value;
  // ignore: unused_field
  final $Res Function(OnBoardingState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$OnBoardingStateCopyWithImpl<$Res>
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
    return 'OnBoardingState.initial()';
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
    required TResult Function(int index) changeActiveIndexSuccess,
    required TResult Function() onSettingTapSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? changeActiveIndexSuccess,
    TResult Function()? onSettingTapSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? changeActiveIndexSuccess,
    TResult Function()? onSettingTapSuccess,
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
    required TResult Function(_ChangeActiveIndexSuccess value)
        changeActiveIndexSuccess,
    required TResult Function(_OnSettingTapSuccess value) onSettingTapSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeActiveIndexSuccess value)? changeActiveIndexSuccess,
    TResult Function(_OnSettingTapSuccess value)? onSettingTapSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeActiveIndexSuccess value)? changeActiveIndexSuccess,
    TResult Function(_OnSettingTapSuccess value)? onSettingTapSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OnBoardingState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ChangeActiveIndexSuccessCopyWith<$Res> {
  factory _$ChangeActiveIndexSuccessCopyWith(_ChangeActiveIndexSuccess value,
          $Res Function(_ChangeActiveIndexSuccess) then) =
      __$ChangeActiveIndexSuccessCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$ChangeActiveIndexSuccessCopyWithImpl<$Res>
    extends _$OnBoardingStateCopyWithImpl<$Res>
    implements _$ChangeActiveIndexSuccessCopyWith<$Res> {
  __$ChangeActiveIndexSuccessCopyWithImpl(_ChangeActiveIndexSuccess _value,
      $Res Function(_ChangeActiveIndexSuccess) _then)
      : super(_value, (v) => _then(v as _ChangeActiveIndexSuccess));

  @override
  _ChangeActiveIndexSuccess get _value =>
      super._value as _ChangeActiveIndexSuccess;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_ChangeActiveIndexSuccess(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChangeActiveIndexSuccess implements _ChangeActiveIndexSuccess {
  const _$_ChangeActiveIndexSuccess(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'OnBoardingState.changeActiveIndexSuccess(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangeActiveIndexSuccess &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$ChangeActiveIndexSuccessCopyWith<_ChangeActiveIndexSuccess> get copyWith =>
      __$ChangeActiveIndexSuccessCopyWithImpl<_ChangeActiveIndexSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) changeActiveIndexSuccess,
    required TResult Function() onSettingTapSuccess,
  }) {
    return changeActiveIndexSuccess(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? changeActiveIndexSuccess,
    TResult Function()? onSettingTapSuccess,
  }) {
    return changeActiveIndexSuccess?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? changeActiveIndexSuccess,
    TResult Function()? onSettingTapSuccess,
    required TResult orElse(),
  }) {
    if (changeActiveIndexSuccess != null) {
      return changeActiveIndexSuccess(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeActiveIndexSuccess value)
        changeActiveIndexSuccess,
    required TResult Function(_OnSettingTapSuccess value) onSettingTapSuccess,
  }) {
    return changeActiveIndexSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeActiveIndexSuccess value)? changeActiveIndexSuccess,
    TResult Function(_OnSettingTapSuccess value)? onSettingTapSuccess,
  }) {
    return changeActiveIndexSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeActiveIndexSuccess value)? changeActiveIndexSuccess,
    TResult Function(_OnSettingTapSuccess value)? onSettingTapSuccess,
    required TResult orElse(),
  }) {
    if (changeActiveIndexSuccess != null) {
      return changeActiveIndexSuccess(this);
    }
    return orElse();
  }
}

abstract class _ChangeActiveIndexSuccess implements OnBoardingState {
  const factory _ChangeActiveIndexSuccess(int index) =
      _$_ChangeActiveIndexSuccess;

  int get index;
  @JsonKey(ignore: true)
  _$ChangeActiveIndexSuccessCopyWith<_ChangeActiveIndexSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnSettingTapSuccessCopyWith<$Res> {
  factory _$OnSettingTapSuccessCopyWith(_OnSettingTapSuccess value,
          $Res Function(_OnSettingTapSuccess) then) =
      __$OnSettingTapSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$OnSettingTapSuccessCopyWithImpl<$Res>
    extends _$OnBoardingStateCopyWithImpl<$Res>
    implements _$OnSettingTapSuccessCopyWith<$Res> {
  __$OnSettingTapSuccessCopyWithImpl(
      _OnSettingTapSuccess _value, $Res Function(_OnSettingTapSuccess) _then)
      : super(_value, (v) => _then(v as _OnSettingTapSuccess));

  @override
  _OnSettingTapSuccess get _value => super._value as _OnSettingTapSuccess;
}

/// @nodoc

class _$_OnSettingTapSuccess implements _OnSettingTapSuccess {
  const _$_OnSettingTapSuccess();

  @override
  String toString() {
    return 'OnBoardingState.onSettingTapSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _OnSettingTapSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) changeActiveIndexSuccess,
    required TResult Function() onSettingTapSuccess,
  }) {
    return onSettingTapSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? changeActiveIndexSuccess,
    TResult Function()? onSettingTapSuccess,
  }) {
    return onSettingTapSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? changeActiveIndexSuccess,
    TResult Function()? onSettingTapSuccess,
    required TResult orElse(),
  }) {
    if (onSettingTapSuccess != null) {
      return onSettingTapSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeActiveIndexSuccess value)
        changeActiveIndexSuccess,
    required TResult Function(_OnSettingTapSuccess value) onSettingTapSuccess,
  }) {
    return onSettingTapSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeActiveIndexSuccess value)? changeActiveIndexSuccess,
    TResult Function(_OnSettingTapSuccess value)? onSettingTapSuccess,
  }) {
    return onSettingTapSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeActiveIndexSuccess value)? changeActiveIndexSuccess,
    TResult Function(_OnSettingTapSuccess value)? onSettingTapSuccess,
    required TResult orElse(),
  }) {
    if (onSettingTapSuccess != null) {
      return onSettingTapSuccess(this);
    }
    return orElse();
  }
}

abstract class _OnSettingTapSuccess implements OnBoardingState {
  const factory _OnSettingTapSuccess() = _$_OnSettingTapSuccess;
}
