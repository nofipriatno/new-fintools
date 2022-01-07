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

  _OnChoiceSelect onChoiceSelect(
      {required SearchModel item,
      required String choice,
      required String taskId}) {
    return _OnChoiceSelect(
      item: item,
      choice: choice,
      taskId: taskId,
    );
  }
}

/// @nodoc
const $SurveyTaskEvent = _$SurveyTaskEventTearOff();

/// @nodoc
mixin _$SurveyTaskEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? taskId) onInitialize,
    required TResult Function(SearchModel item, String choice, String taskId)
        onChoiceSelect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? taskId)? onInitialize,
    TResult Function(SearchModel item, String choice, String taskId)?
        onChoiceSelect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? taskId)? onInitialize,
    TResult Function(SearchModel item, String choice, String taskId)?
        onChoiceSelect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInitialize value) onInitialize,
    required TResult Function(_OnChoiceSelect value) onChoiceSelect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnInitialize value)? onInitialize,
    TResult Function(_OnChoiceSelect value)? onChoiceSelect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInitialize value)? onInitialize,
    TResult Function(_OnChoiceSelect value)? onChoiceSelect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyTaskEventCopyWith<$Res> {
  factory $SurveyTaskEventCopyWith(
          SurveyTaskEvent value, $Res Function(SurveyTaskEvent) then) =
      _$SurveyTaskEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SurveyTaskEventCopyWithImpl<$Res>
    implements $SurveyTaskEventCopyWith<$Res> {
  _$SurveyTaskEventCopyWithImpl(this._value, this._then);

  final SurveyTaskEvent _value;
  // ignore: unused_field
  final $Res Function(SurveyTaskEvent) _then;
}

/// @nodoc
abstract class _$OnInitializeCopyWith<$Res> {
  factory _$OnInitializeCopyWith(
          _OnInitialize value, $Res Function(_OnInitialize) then) =
      __$OnInitializeCopyWithImpl<$Res>;
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
    required TResult Function(SearchModel item, String choice, String taskId)
        onChoiceSelect,
  }) {
    return onInitialize(taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? taskId)? onInitialize,
    TResult Function(SearchModel item, String choice, String taskId)?
        onChoiceSelect,
  }) {
    return onInitialize?.call(taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? taskId)? onInitialize,
    TResult Function(SearchModel item, String choice, String taskId)?
        onChoiceSelect,
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
    required TResult Function(_OnChoiceSelect value) onChoiceSelect,
  }) {
    return onInitialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnInitialize value)? onInitialize,
    TResult Function(_OnChoiceSelect value)? onChoiceSelect,
  }) {
    return onInitialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInitialize value)? onInitialize,
    TResult Function(_OnChoiceSelect value)? onChoiceSelect,
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

  String? get taskId;
  @JsonKey(ignore: true)
  _$OnInitializeCopyWith<_OnInitialize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnChoiceSelectCopyWith<$Res> {
  factory _$OnChoiceSelectCopyWith(
          _OnChoiceSelect value, $Res Function(_OnChoiceSelect) then) =
      __$OnChoiceSelectCopyWithImpl<$Res>;
  $Res call({SearchModel item, String choice, String taskId});

  $SearchModelCopyWith<$Res> get item;
}

/// @nodoc
class __$OnChoiceSelectCopyWithImpl<$Res>
    extends _$SurveyTaskEventCopyWithImpl<$Res>
    implements _$OnChoiceSelectCopyWith<$Res> {
  __$OnChoiceSelectCopyWithImpl(
      _OnChoiceSelect _value, $Res Function(_OnChoiceSelect) _then)
      : super(_value, (v) => _then(v as _OnChoiceSelect));

  @override
  _OnChoiceSelect get _value => super._value as _OnChoiceSelect;

  @override
  $Res call({
    Object? item = freezed,
    Object? choice = freezed,
    Object? taskId = freezed,
  }) {
    return _then(_OnChoiceSelect(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as SearchModel,
      choice: choice == freezed
          ? _value.choice
          : choice // ignore: cast_nullable_to_non_nullable
              as String,
      taskId: taskId == freezed
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $SearchModelCopyWith<$Res> get item {
    return $SearchModelCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$_OnChoiceSelect implements _OnChoiceSelect {
  const _$_OnChoiceSelect(
      {required this.item, required this.choice, required this.taskId});

  @override
  final SearchModel item;
  @override
  final String choice;
  @override
  final String taskId;

  @override
  String toString() {
    return 'SurveyTaskEvent.onChoiceSelect(item: $item, choice: $choice, taskId: $taskId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnChoiceSelect &&
            const DeepCollectionEquality().equals(other.item, item) &&
            const DeepCollectionEquality().equals(other.choice, choice) &&
            const DeepCollectionEquality().equals(other.taskId, taskId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(item),
      const DeepCollectionEquality().hash(choice),
      const DeepCollectionEquality().hash(taskId));

  @JsonKey(ignore: true)
  @override
  _$OnChoiceSelectCopyWith<_OnChoiceSelect> get copyWith =>
      __$OnChoiceSelectCopyWithImpl<_OnChoiceSelect>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? taskId) onInitialize,
    required TResult Function(SearchModel item, String choice, String taskId)
        onChoiceSelect,
  }) {
    return onChoiceSelect(item, choice, taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? taskId)? onInitialize,
    TResult Function(SearchModel item, String choice, String taskId)?
        onChoiceSelect,
  }) {
    return onChoiceSelect?.call(item, choice, taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? taskId)? onInitialize,
    TResult Function(SearchModel item, String choice, String taskId)?
        onChoiceSelect,
    required TResult orElse(),
  }) {
    if (onChoiceSelect != null) {
      return onChoiceSelect(item, choice, taskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInitialize value) onInitialize,
    required TResult Function(_OnChoiceSelect value) onChoiceSelect,
  }) {
    return onChoiceSelect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnInitialize value)? onInitialize,
    TResult Function(_OnChoiceSelect value)? onChoiceSelect,
  }) {
    return onChoiceSelect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInitialize value)? onInitialize,
    TResult Function(_OnChoiceSelect value)? onChoiceSelect,
    required TResult orElse(),
  }) {
    if (onChoiceSelect != null) {
      return onChoiceSelect(this);
    }
    return orElse();
  }
}

abstract class _OnChoiceSelect implements SurveyTaskEvent {
  const factory _OnChoiceSelect(
      {required SearchModel item,
      required String choice,
      required String taskId}) = _$_OnChoiceSelect;

  SearchModel get item;
  String get choice;
  String get taskId;
  @JsonKey(ignore: true)
  _$OnChoiceSelectCopyWith<_OnChoiceSelect> get copyWith =>
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
      {required List<QuestionAnswerModel> questions,
      required List<FormUploadData> assets,
      required List<FormUploadData> document}) {
    return _CheckClientSuccess(
      questions: questions,
      assets: assets,
      document: document,
    );
  }

  _SelectChoiceSuccess selectChoiceSuccess(
      {required SearchModel item, required String choice}) {
    return _SelectChoiceSuccess(
      item: item,
      choice: choice,
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
    required TResult Function(List<QuestionAnswerModel> questions,
            List<FormUploadData> assets, List<FormUploadData> document)
        checkClientSuccess,
    required TResult Function(SearchModel item, String choice)
        selectChoiceSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<QuestionAnswerModel> questions,
            List<FormUploadData> assets, List<FormUploadData> document)?
        checkClientSuccess,
    TResult Function(SearchModel item, String choice)? selectChoiceSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<QuestionAnswerModel> questions,
            List<FormUploadData> assets, List<FormUploadData> document)?
        checkClientSuccess,
    TResult Function(SearchModel item, String choice)? selectChoiceSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CheckClientSuccess value) checkClientSuccess,
    required TResult Function(_SelectChoiceSuccess value) selectChoiceSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CheckClientSuccess value)? checkClientSuccess,
    TResult Function(_SelectChoiceSuccess value)? selectChoiceSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CheckClientSuccess value)? checkClientSuccess,
    TResult Function(_SelectChoiceSuccess value)? selectChoiceSuccess,
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
    required TResult Function(List<QuestionAnswerModel> questions,
            List<FormUploadData> assets, List<FormUploadData> document)
        checkClientSuccess,
    required TResult Function(SearchModel item, String choice)
        selectChoiceSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<QuestionAnswerModel> questions,
            List<FormUploadData> assets, List<FormUploadData> document)?
        checkClientSuccess,
    TResult Function(SearchModel item, String choice)? selectChoiceSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<QuestionAnswerModel> questions,
            List<FormUploadData> assets, List<FormUploadData> document)?
        checkClientSuccess,
    TResult Function(SearchModel item, String choice)? selectChoiceSuccess,
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
    required TResult Function(_SelectChoiceSuccess value) selectChoiceSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CheckClientSuccess value)? checkClientSuccess,
    TResult Function(_SelectChoiceSuccess value)? selectChoiceSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CheckClientSuccess value)? checkClientSuccess,
    TResult Function(_SelectChoiceSuccess value)? selectChoiceSuccess,
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
    required TResult Function(List<QuestionAnswerModel> questions,
            List<FormUploadData> assets, List<FormUploadData> document)
        checkClientSuccess,
    required TResult Function(SearchModel item, String choice)
        selectChoiceSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<QuestionAnswerModel> questions,
            List<FormUploadData> assets, List<FormUploadData> document)?
        checkClientSuccess,
    TResult Function(SearchModel item, String choice)? selectChoiceSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<QuestionAnswerModel> questions,
            List<FormUploadData> assets, List<FormUploadData> document)?
        checkClientSuccess,
    TResult Function(SearchModel item, String choice)? selectChoiceSuccess,
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
    required TResult Function(_SelectChoiceSuccess value) selectChoiceSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CheckClientSuccess value)? checkClientSuccess,
    TResult Function(_SelectChoiceSuccess value)? selectChoiceSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CheckClientSuccess value)? checkClientSuccess,
    TResult Function(_SelectChoiceSuccess value)? selectChoiceSuccess,
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
  $Res call(
      {List<QuestionAnswerModel> questions,
      List<FormUploadData> assets,
      List<FormUploadData> document});
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
    Object? assets = freezed,
    Object? document = freezed,
  }) {
    return _then(_CheckClientSuccess(
      questions: questions == freezed
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionAnswerModel>,
      assets: assets == freezed
          ? _value.assets
          : assets // ignore: cast_nullable_to_non_nullable
              as List<FormUploadData>,
      document: document == freezed
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as List<FormUploadData>,
    ));
  }
}

/// @nodoc

class _$_CheckClientSuccess implements _CheckClientSuccess {
  const _$_CheckClientSuccess(
      {required this.questions, required this.assets, required this.document});

  @override
  final List<QuestionAnswerModel> questions;
  @override
  final List<FormUploadData> assets;
  @override
  final List<FormUploadData> document;

  @override
  String toString() {
    return 'SurveyTaskState.checkClientSuccess(questions: $questions, assets: $assets, document: $document)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CheckClientSuccess &&
            const DeepCollectionEquality().equals(other.questions, questions) &&
            const DeepCollectionEquality().equals(other.assets, assets) &&
            const DeepCollectionEquality().equals(other.document, document));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(questions),
      const DeepCollectionEquality().hash(assets),
      const DeepCollectionEquality().hash(document));

  @JsonKey(ignore: true)
  @override
  _$CheckClientSuccessCopyWith<_CheckClientSuccess> get copyWith =>
      __$CheckClientSuccessCopyWithImpl<_CheckClientSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<QuestionAnswerModel> questions,
            List<FormUploadData> assets, List<FormUploadData> document)
        checkClientSuccess,
    required TResult Function(SearchModel item, String choice)
        selectChoiceSuccess,
  }) {
    return checkClientSuccess(questions, assets, document);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<QuestionAnswerModel> questions,
            List<FormUploadData> assets, List<FormUploadData> document)?
        checkClientSuccess,
    TResult Function(SearchModel item, String choice)? selectChoiceSuccess,
  }) {
    return checkClientSuccess?.call(questions, assets, document);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<QuestionAnswerModel> questions,
            List<FormUploadData> assets, List<FormUploadData> document)?
        checkClientSuccess,
    TResult Function(SearchModel item, String choice)? selectChoiceSuccess,
    required TResult orElse(),
  }) {
    if (checkClientSuccess != null) {
      return checkClientSuccess(questions, assets, document);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CheckClientSuccess value) checkClientSuccess,
    required TResult Function(_SelectChoiceSuccess value) selectChoiceSuccess,
  }) {
    return checkClientSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CheckClientSuccess value)? checkClientSuccess,
    TResult Function(_SelectChoiceSuccess value)? selectChoiceSuccess,
  }) {
    return checkClientSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CheckClientSuccess value)? checkClientSuccess,
    TResult Function(_SelectChoiceSuccess value)? selectChoiceSuccess,
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
      {required List<QuestionAnswerModel> questions,
      required List<FormUploadData> assets,
      required List<FormUploadData> document}) = _$_CheckClientSuccess;

  List<QuestionAnswerModel> get questions;
  List<FormUploadData> get assets;
  List<FormUploadData> get document;
  @JsonKey(ignore: true)
  _$CheckClientSuccessCopyWith<_CheckClientSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SelectChoiceSuccessCopyWith<$Res> {
  factory _$SelectChoiceSuccessCopyWith(_SelectChoiceSuccess value,
          $Res Function(_SelectChoiceSuccess) then) =
      __$SelectChoiceSuccessCopyWithImpl<$Res>;
  $Res call({SearchModel item, String choice});

  $SearchModelCopyWith<$Res> get item;
}

/// @nodoc
class __$SelectChoiceSuccessCopyWithImpl<$Res>
    extends _$SurveyTaskStateCopyWithImpl<$Res>
    implements _$SelectChoiceSuccessCopyWith<$Res> {
  __$SelectChoiceSuccessCopyWithImpl(
      _SelectChoiceSuccess _value, $Res Function(_SelectChoiceSuccess) _then)
      : super(_value, (v) => _then(v as _SelectChoiceSuccess));

  @override
  _SelectChoiceSuccess get _value => super._value as _SelectChoiceSuccess;

  @override
  $Res call({
    Object? item = freezed,
    Object? choice = freezed,
  }) {
    return _then(_SelectChoiceSuccess(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as SearchModel,
      choice: choice == freezed
          ? _value.choice
          : choice // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $SearchModelCopyWith<$Res> get item {
    return $SearchModelCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$_SelectChoiceSuccess implements _SelectChoiceSuccess {
  const _$_SelectChoiceSuccess({required this.item, required this.choice});

  @override
  final SearchModel item;
  @override
  final String choice;

  @override
  String toString() {
    return 'SurveyTaskState.selectChoiceSuccess(item: $item, choice: $choice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SelectChoiceSuccess &&
            const DeepCollectionEquality().equals(other.item, item) &&
            const DeepCollectionEquality().equals(other.choice, choice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(item),
      const DeepCollectionEquality().hash(choice));

  @JsonKey(ignore: true)
  @override
  _$SelectChoiceSuccessCopyWith<_SelectChoiceSuccess> get copyWith =>
      __$SelectChoiceSuccessCopyWithImpl<_SelectChoiceSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<QuestionAnswerModel> questions,
            List<FormUploadData> assets, List<FormUploadData> document)
        checkClientSuccess,
    required TResult Function(SearchModel item, String choice)
        selectChoiceSuccess,
  }) {
    return selectChoiceSuccess(item, choice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<QuestionAnswerModel> questions,
            List<FormUploadData> assets, List<FormUploadData> document)?
        checkClientSuccess,
    TResult Function(SearchModel item, String choice)? selectChoiceSuccess,
  }) {
    return selectChoiceSuccess?.call(item, choice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<QuestionAnswerModel> questions,
            List<FormUploadData> assets, List<FormUploadData> document)?
        checkClientSuccess,
    TResult Function(SearchModel item, String choice)? selectChoiceSuccess,
    required TResult orElse(),
  }) {
    if (selectChoiceSuccess != null) {
      return selectChoiceSuccess(item, choice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CheckClientSuccess value) checkClientSuccess,
    required TResult Function(_SelectChoiceSuccess value) selectChoiceSuccess,
  }) {
    return selectChoiceSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CheckClientSuccess value)? checkClientSuccess,
    TResult Function(_SelectChoiceSuccess value)? selectChoiceSuccess,
  }) {
    return selectChoiceSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CheckClientSuccess value)? checkClientSuccess,
    TResult Function(_SelectChoiceSuccess value)? selectChoiceSuccess,
    required TResult orElse(),
  }) {
    if (selectChoiceSuccess != null) {
      return selectChoiceSuccess(this);
    }
    return orElse();
  }
}

abstract class _SelectChoiceSuccess implements SurveyTaskState {
  const factory _SelectChoiceSuccess(
      {required SearchModel item,
      required String choice}) = _$_SelectChoiceSuccess;

  SearchModel get item;
  String get choice;
  @JsonKey(ignore: true)
  _$SelectChoiceSuccessCopyWith<_SelectChoiceSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
