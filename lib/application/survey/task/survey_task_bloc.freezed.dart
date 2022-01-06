// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'survey_task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SurveyTaskEventTearOff {
  const _$SurveyTaskEventTearOff();

  _OnInitialize onInitialize({required String? taskId}) {
    return _OnInitialize(
      taskId: taskId,
    );
  }
}

/// @nodoc
const $SurveyTaskEvent = _$SurveyTaskEventTearOff();

/// @nodoc
mixin _$SurveyTaskEvent {
  String? get taskId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? taskId) onInitialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? taskId)? onInitialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? taskId)? onInitialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInitialize value) onInitialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnInitialize value)? onInitialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInitialize value)? onInitialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SurveyTaskEventCopyWith<SurveyTaskEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyTaskEventCopyWith<$Res> {
  factory $SurveyTaskEventCopyWith(
          SurveyTaskEvent value, $Res Function(SurveyTaskEvent) then) =
      _$SurveyTaskEventCopyWithImpl<$Res>;
  $Res call({String? taskId});
}

/// @nodoc
class _$SurveyTaskEventCopyWithImpl<$Res>
    implements $SurveyTaskEventCopyWith<$Res> {
  _$SurveyTaskEventCopyWithImpl(this._value, this._then);

  final SurveyTaskEvent _value;
  // ignore: unused_field
  final $Res Function(SurveyTaskEvent) _then;

  @override
  $Res call({
    Object? taskId = freezed,
  }) {
    return _then(_value.copyWith(
      taskId: taskId == freezed
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$OnInitializeCopyWith<$Res>
    implements $SurveyTaskEventCopyWith<$Res> {
  factory _$OnInitializeCopyWith(
          _OnInitialize value, $Res Function(_OnInitialize) then) =
      __$OnInitializeCopyWithImpl<$Res>;
  @override
  $Res call({String? taskId});
}

/// @nodoc
class __$OnInitializeCopyWithImpl<$Res>
    extends _$SurveyTaskEventCopyWithImpl<$Res>
    implements _$OnInitializeCopyWith<$Res> {
  __$OnInitializeCopyWithImpl(
      _OnInitialize _value, $Res Function(_OnInitialize) _then)
      : super(_value, (v) => _then(v as _OnInitialize));

  @override
  _OnInitialize get _value => super._value as _OnInitialize;

  @override
  $Res call({
    Object? taskId = freezed,
  }) {
    return _then(_OnInitialize(
      taskId: taskId == freezed
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_OnInitialize implements _OnInitialize {
  const _$_OnInitialize({required this.taskId});

  @override
  final String? taskId;

  @override
  String toString() {
    return 'SurveyTaskEvent.onInitialize(taskId: $taskId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnInitialize &&
            const DeepCollectionEquality().equals(other.taskId, taskId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(taskId));

  @JsonKey(ignore: true)
  @override
  _$OnInitializeCopyWith<_OnInitialize> get copyWith =>
      __$OnInitializeCopyWithImpl<_OnInitialize>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? taskId) onInitialize,
  }) {
    return onInitialize(taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? taskId)? onInitialize,
  }) {
    return onInitialize?.call(taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? taskId)? onInitialize,
    required TResult orElse(),
  }) {
    if (onInitialize != null) {
      return onInitialize(taskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInitialize value) onInitialize,
  }) {
    return onInitialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnInitialize value)? onInitialize,
  }) {
    return onInitialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInitialize value)? onInitialize,
    required TResult orElse(),
  }) {
    if (onInitialize != null) {
      return onInitialize(this);
    }
    return orElse();
  }
}

abstract class _OnInitialize implements SurveyTaskEvent {
  const factory _OnInitialize({required String? taskId}) = _$_OnInitialize;

  @override
  String? get taskId;
  @override
  @JsonKey(ignore: true)
  _$OnInitializeCopyWith<_OnInitialize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SurveyTaskStateTearOff {
  const _$SurveyTaskStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _CheckClientSuccess checkClientSuccess(
      {required List<QuestionAnswerModel> questions}) {
    return _CheckClientSuccess(
      questions: questions,
    );
  }
}

/// @nodoc
const $SurveyTaskState = _$SurveyTaskStateTearOff();

/// @nodoc
mixin _$SurveyTaskState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<QuestionAnswerModel> questions)
        checkClientSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<QuestionAnswerModel> questions)? checkClientSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<QuestionAnswerModel> questions)? checkClientSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CheckClientSuccess value) checkClientSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CheckClientSuccess value)? checkClientSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CheckClientSuccess value)? checkClientSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyTaskStateCopyWith<$Res> {
  factory $SurveyTaskStateCopyWith(
          SurveyTaskState value, $Res Function(SurveyTaskState) then) =
      _$SurveyTaskStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SurveyTaskStateCopyWithImpl<$Res>
    implements $SurveyTaskStateCopyWith<$Res> {
  _$SurveyTaskStateCopyWithImpl(this._value, this._then);

  final SurveyTaskState _value;
  // ignore: unused_field
  final $Res Function(SurveyTaskState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SurveyTaskStateCopyWithImpl<$Res>
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
    return 'SurveyTaskState.initial()';
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
    required TResult Function(List<QuestionAnswerModel> questions)
        checkClientSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<QuestionAnswerModel> questions)? checkClientSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<QuestionAnswerModel> questions)? checkClientSuccess,
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
    required TResult Function(_CheckClientSuccess value) checkClientSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CheckClientSuccess value)? checkClientSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CheckClientSuccess value)? checkClientSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SurveyTaskState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$SurveyTaskStateCopyWithImpl<$Res>
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
    return 'SurveyTaskState.loading()';
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
    required TResult Function(List<QuestionAnswerModel> questions)
        checkClientSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<QuestionAnswerModel> questions)? checkClientSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<QuestionAnswerModel> questions)? checkClientSuccess,
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
    required TResult Function(_CheckClientSuccess value) checkClientSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CheckClientSuccess value)? checkClientSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CheckClientSuccess value)? checkClientSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SurveyTaskState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$CheckClientSuccessCopyWith<$Res> {
  factory _$CheckClientSuccessCopyWith(
          _CheckClientSuccess value, $Res Function(_CheckClientSuccess) then) =
      __$CheckClientSuccessCopyWithImpl<$Res>;
  $Res call({List<QuestionAnswerModel> questions});
}

/// @nodoc
class __$CheckClientSuccessCopyWithImpl<$Res>
    extends _$SurveyTaskStateCopyWithImpl<$Res>
    implements _$CheckClientSuccessCopyWith<$Res> {
  __$CheckClientSuccessCopyWithImpl(
      _CheckClientSuccess _value, $Res Function(_CheckClientSuccess) _then)
      : super(_value, (v) => _then(v as _CheckClientSuccess));

  @override
  _CheckClientSuccess get _value => super._value as _CheckClientSuccess;

  @override
  $Res call({
    Object? questions = freezed,
  }) {
    return _then(_CheckClientSuccess(
      questions: questions == freezed
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionAnswerModel>,
    ));
  }
}

/// @nodoc

class _$_CheckClientSuccess implements _CheckClientSuccess {
  const _$_CheckClientSuccess({required this.questions});

  @override
  final List<QuestionAnswerModel> questions;

  @override
  String toString() {
    return 'SurveyTaskState.checkClientSuccess(questions: $questions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CheckClientSuccess &&
            const DeepCollectionEquality().equals(other.questions, questions));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(questions));

  @JsonKey(ignore: true)
  @override
  _$CheckClientSuccessCopyWith<_CheckClientSuccess> get copyWith =>
      __$CheckClientSuccessCopyWithImpl<_CheckClientSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<QuestionAnswerModel> questions)
        checkClientSuccess,
  }) {
    return checkClientSuccess(questions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<QuestionAnswerModel> questions)? checkClientSuccess,
  }) {
    return checkClientSuccess?.call(questions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<QuestionAnswerModel> questions)? checkClientSuccess,
    required TResult orElse(),
  }) {
    if (checkClientSuccess != null) {
      return checkClientSuccess(questions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CheckClientSuccess value) checkClientSuccess,
  }) {
    return checkClientSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CheckClientSuccess value)? checkClientSuccess,
  }) {
    return checkClientSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CheckClientSuccess value)? checkClientSuccess,
    required TResult orElse(),
  }) {
    if (checkClientSuccess != null) {
      return checkClientSuccess(this);
    }
    return orElse();
  }
}

abstract class _CheckClientSuccess implements SurveyTaskState {
  const factory _CheckClientSuccess(
      {required List<QuestionAnswerModel> questions}) = _$_CheckClientSuccess;

  List<QuestionAnswerModel> get questions;
  @JsonKey(ignore: true)
  _$CheckClientSuccessCopyWith<_CheckClientSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
