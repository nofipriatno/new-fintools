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

  _OnFileSelect onFileSelect(
      {required String? path,
      required int? index,
      required FormUploadData id,
      required String? extension,
      required String taskId}) {
    return _OnFileSelect(
      path: path,
      index: index,
      id: id,
      extension: extension,
      taskId: taskId,
    );
  }

  _OnSubmitSurvey onSubmitSurvey(
      {required List<SurveyClientModel> client,
      required List<QuestionAnswerModel> question,
      required List<SurveyDataModel> data,
      required SurveyTask task,
      required List<bool> checkedData}) {
    return _OnSubmitSurvey(
      client: client,
      question: question,
      data: data,
      task: task,
      checkedData: checkedData,
    );
  }

  _OnProcessCheck onProcessCheck(
      {required List<SurveyClientModel> client,
      required List<QuestionAnswerModel> question,
      required List<FormUploadData> formData,
      required List<SurveyDataModel> data}) {
    return _OnProcessCheck(
      client: client,
      question: question,
      formData: formData,
      data: data,
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
    required TResult Function(String? path, int? index, FormUploadData id,
            String? extension, String taskId)
        onFileSelect,
    required TResult Function(
            List<SurveyClientModel> client,
            List<QuestionAnswerModel> question,
            List<SurveyDataModel> data,
            SurveyTask task,
            List<bool> checkedData)
        onSubmitSurvey,
    required TResult Function(
            List<SurveyClientModel> client,
            List<QuestionAnswerModel> question,
            List<FormUploadData> formData,
            List<SurveyDataModel> data)
        onProcessCheck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? taskId)? onInitialize,
    TResult Function(SearchModel item, String choice, String taskId)?
        onChoiceSelect,
    TResult Function(String? path, int? index, FormUploadData id,
            String? extension, String taskId)?
        onFileSelect,
    TResult Function(
            List<SurveyClientModel> client,
            List<QuestionAnswerModel> question,
            List<SurveyDataModel> data,
            SurveyTask task,
            List<bool> checkedData)?
        onSubmitSurvey,
    TResult Function(
            List<SurveyClientModel> client,
            List<QuestionAnswerModel> question,
            List<FormUploadData> formData,
            List<SurveyDataModel> data)?
        onProcessCheck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? taskId)? onInitialize,
    TResult Function(SearchModel item, String choice, String taskId)?
        onChoiceSelect,
    TResult Function(String? path, int? index, FormUploadData id,
            String? extension, String taskId)?
        onFileSelect,
    TResult Function(
            List<SurveyClientModel> client,
            List<QuestionAnswerModel> question,
            List<SurveyDataModel> data,
            SurveyTask task,
            List<bool> checkedData)?
        onSubmitSurvey,
    TResult Function(
            List<SurveyClientModel> client,
            List<QuestionAnswerModel> question,
            List<FormUploadData> formData,
            List<SurveyDataModel> data)?
        onProcessCheck,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInitialize value) onInitialize,
    required TResult Function(_OnChoiceSelect value) onChoiceSelect,
    required TResult Function(_OnFileSelect value) onFileSelect,
    required TResult Function(_OnSubmitSurvey value) onSubmitSurvey,
    required TResult Function(_OnProcessCheck value) onProcessCheck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnInitialize value)? onInitialize,
    TResult Function(_OnChoiceSelect value)? onChoiceSelect,
    TResult Function(_OnFileSelect value)? onFileSelect,
    TResult Function(_OnSubmitSurvey value)? onSubmitSurvey,
    TResult Function(_OnProcessCheck value)? onProcessCheck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInitialize value)? onInitialize,
    TResult Function(_OnChoiceSelect value)? onChoiceSelect,
    TResult Function(_OnFileSelect value)? onFileSelect,
    TResult Function(_OnSubmitSurvey value)? onSubmitSurvey,
    TResult Function(_OnProcessCheck value)? onProcessCheck,
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
    required TResult Function(String? path, int? index, FormUploadData id,
            String? extension, String taskId)
        onFileSelect,
    required TResult Function(
            List<SurveyClientModel> client,
            List<QuestionAnswerModel> question,
            List<SurveyDataModel> data,
            SurveyTask task,
            List<bool> checkedData)
        onSubmitSurvey,
    required TResult Function(
            List<SurveyClientModel> client,
            List<QuestionAnswerModel> question,
            List<FormUploadData> formData,
            List<SurveyDataModel> data)
        onProcessCheck,
  }) {
    return onInitialize(taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? taskId)? onInitialize,
    TResult Function(SearchModel item, String choice, String taskId)?
        onChoiceSelect,
    TResult Function(String? path, int? index, FormUploadData id,
            String? extension, String taskId)?
        onFileSelect,
    TResult Function(
            List<SurveyClientModel> client,
            List<QuestionAnswerModel> question,
            List<SurveyDataModel> data,
            SurveyTask task,
            List<bool> checkedData)?
        onSubmitSurvey,
    TResult Function(
            List<SurveyClientModel> client,
            List<QuestionAnswerModel> question,
            List<FormUploadData> formData,
            List<SurveyDataModel> data)?
        onProcessCheck,
  }) {
    return onInitialize?.call(taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? taskId)? onInitialize,
    TResult Function(SearchModel item, String choice, String taskId)?
        onChoiceSelect,
    TResult Function(String? path, int? index, FormUploadData id,
            String? extension, String taskId)?
        onFileSelect,
    TResult Function(
            List<SurveyClientModel> client,
            List<QuestionAnswerModel> question,
            List<SurveyDataModel> data,
            SurveyTask task,
            List<bool> checkedData)?
        onSubmitSurvey,
    TResult Function(
            List<SurveyClientModel> client,
            List<QuestionAnswerModel> question,
            List<FormUploadData> formData,
            List<SurveyDataModel> data)?
        onProcessCheck,
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
    required TResult Function(_OnFileSelect value) onFileSelect,
    required TResult Function(_OnSubmitSurvey value) onSubmitSurvey,
    required TResult Function(_OnProcessCheck value) onProcessCheck,
  }) {
    return onInitialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnInitialize value)? onInitialize,
    TResult Function(_OnChoiceSelect value)? onChoiceSelect,
    TResult Function(_OnFileSelect value)? onFileSelect,
    TResult Function(_OnSubmitSurvey value)? onSubmitSurvey,
    TResult Function(_OnProcessCheck value)? onProcessCheck,
  }) {
    return onInitialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInitialize value)? onInitialize,
    TResult Function(_OnChoiceSelect value)? onChoiceSelect,
    TResult Function(_OnFileSelect value)? onFileSelect,
    TResult Function(_OnSubmitSurvey value)? onSubmitSurvey,
    TResult Function(_OnProcessCheck value)? onProcessCheck,
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
    required TResult Function(String? path, int? index, FormUploadData id,
            String? extension, String taskId)
        onFileSelect,
    required TResult Function(
            List<SurveyClientModel> client,
            List<QuestionAnswerModel> question,
            List<SurveyDataModel> data,
            SurveyTask task,
            List<bool> checkedData)
        onSubmitSurvey,
    required TResult Function(
            List<SurveyClientModel> client,
            List<QuestionAnswerModel> question,
            List<FormUploadData> formData,
            List<SurveyDataModel> data)
        onProcessCheck,
  }) {
    return onChoiceSelect(item, choice, taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? taskId)? onInitialize,
    TResult Function(SearchModel item, String choice, String taskId)?
        onChoiceSelect,
    TResult Function(String? path, int? index, FormUploadData id,
            String? extension, String taskId)?
        onFileSelect,
    TResult Function(
            List<SurveyClientModel> client,
            List<QuestionAnswerModel> question,
            List<SurveyDataModel> data,
            SurveyTask task,
            List<bool> checkedData)?
        onSubmitSurvey,
    TResult Function(
            List<SurveyClientModel> client,
            List<QuestionAnswerModel> question,
            List<FormUploadData> formData,
            List<SurveyDataModel> data)?
        onProcessCheck,
  }) {
    return onChoiceSelect?.call(item, choice, taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? taskId)? onInitialize,
    TResult Function(SearchModel item, String choice, String taskId)?
        onChoiceSelect,
    TResult Function(String? path, int? index, FormUploadData id,
            String? extension, String taskId)?
        onFileSelect,
    TResult Function(
            List<SurveyClientModel> client,
            List<QuestionAnswerModel> question,
            List<SurveyDataModel> data,
            SurveyTask task,
            List<bool> checkedData)?
        onSubmitSurvey,
    TResult Function(
            List<SurveyClientModel> client,
            List<QuestionAnswerModel> question,
            List<FormUploadData> formData,
            List<SurveyDataModel> data)?
        onProcessCheck,
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
    required TResult Function(_OnFileSelect value) onFileSelect,
    required TResult Function(_OnSubmitSurvey value) onSubmitSurvey,
    required TResult Function(_OnProcessCheck value) onProcessCheck,
  }) {
    return onChoiceSelect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnInitialize value)? onInitialize,
    TResult Function(_OnChoiceSelect value)? onChoiceSelect,
    TResult Function(_OnFileSelect value)? onFileSelect,
    TResult Function(_OnSubmitSurvey value)? onSubmitSurvey,
    TResult Function(_OnProcessCheck value)? onProcessCheck,
  }) {
    return onChoiceSelect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInitialize value)? onInitialize,
    TResult Function(_OnChoiceSelect value)? onChoiceSelect,
    TResult Function(_OnFileSelect value)? onFileSelect,
    TResult Function(_OnSubmitSurvey value)? onSubmitSurvey,
    TResult Function(_OnProcessCheck value)? onProcessCheck,
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
abstract class _$OnFileSelectCopyWith<$Res> {
  factory _$OnFileSelectCopyWith(
          _OnFileSelect value, $Res Function(_OnFileSelect) then) =
      __$OnFileSelectCopyWithImpl<$Res>;
  $Res call(
      {String? path,
      int? index,
      FormUploadData id,
      String? extension,
      String taskId});
}

/// @nodoc
class __$OnFileSelectCopyWithImpl<$Res>
    extends _$SurveyTaskEventCopyWithImpl<$Res>
    implements _$OnFileSelectCopyWith<$Res> {
  __$OnFileSelectCopyWithImpl(
      _OnFileSelect _value, $Res Function(_OnFileSelect) _then)
      : super(_value, (v) => _then(v as _OnFileSelect));

  @override
  _OnFileSelect get _value => super._value as _OnFileSelect;

  @override
  $Res call({
    Object? path = freezed,
    Object? index = freezed,
    Object? id = freezed,
    Object? extension = freezed,
    Object? taskId = freezed,
  }) {
    return _then(_OnFileSelect(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as FormUploadData,
      extension: extension == freezed
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String?,
      taskId: taskId == freezed
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnFileSelect implements _OnFileSelect {
  const _$_OnFileSelect(
      {required this.path,
      required this.index,
      required this.id,
      required this.extension,
      required this.taskId});

  @override
  final String? path;
  @override
  final int? index;
  @override
  final FormUploadData id;
  @override
  final String? extension;
  @override
  final String taskId;

  @override
  String toString() {
    return 'SurveyTaskEvent.onFileSelect(path: $path, index: $index, id: $id, extension: $extension, taskId: $taskId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnFileSelect &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.extension, extension) &&
            const DeepCollectionEquality().equals(other.taskId, taskId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(path),
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(extension),
      const DeepCollectionEquality().hash(taskId));

  @JsonKey(ignore: true)
  @override
  _$OnFileSelectCopyWith<_OnFileSelect> get copyWith =>
      __$OnFileSelectCopyWithImpl<_OnFileSelect>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? taskId) onInitialize,
    required TResult Function(SearchModel item, String choice, String taskId)
        onChoiceSelect,
    required TResult Function(String? path, int? index, FormUploadData id,
            String? extension, String taskId)
        onFileSelect,
    required TResult Function(
            List<SurveyClientModel> client,
            List<QuestionAnswerModel> question,
            List<SurveyDataModel> data,
            SurveyTask task,
            List<bool> checkedData)
        onSubmitSurvey,
    required TResult Function(
            List<SurveyClientModel> client,
            List<QuestionAnswerModel> question,
            List<FormUploadData> formData,
            List<SurveyDataModel> data)
        onProcessCheck,
  }) {
    return onFileSelect(path, index, id, extension, taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? taskId)? onInitialize,
    TResult Function(SearchModel item, String choice, String taskId)?
        onChoiceSelect,
    TResult Function(String? path, int? index, FormUploadData id,
            String? extension, String taskId)?
        onFileSelect,
    TResult Function(
            List<SurveyClientModel> client,
            List<QuestionAnswerModel> question,
            List<SurveyDataModel> data,
            SurveyTask task,
            List<bool> checkedData)?
        onSubmitSurvey,
    TResult Function(
            List<SurveyClientModel> client,
            List<QuestionAnswerModel> question,
            List<FormUploadData> formData,
            List<SurveyDataModel> data)?
        onProcessCheck,
  }) {
    return onFileSelect?.call(path, index, id, extension, taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? taskId)? onInitialize,
    TResult Function(SearchModel item, String choice, String taskId)?
        onChoiceSelect,
    TResult Function(String? path, int? index, FormUploadData id,
            String? extension, String taskId)?
        onFileSelect,
    TResult Function(
            List<SurveyClientModel> client,
            List<QuestionAnswerModel> question,
            List<SurveyDataModel> data,
            SurveyTask task,
            List<bool> checkedData)?
        onSubmitSurvey,
    TResult Function(
            List<SurveyClientModel> client,
            List<QuestionAnswerModel> question,
            List<FormUploadData> formData,
            List<SurveyDataModel> data)?
        onProcessCheck,
    required TResult orElse(),
  }) {
    if (onFileSelect != null) {
      return onFileSelect(path, index, id, extension, taskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInitialize value) onInitialize,
    required TResult Function(_OnChoiceSelect value) onChoiceSelect,
    required TResult Function(_OnFileSelect value) onFileSelect,
    required TResult Function(_OnSubmitSurvey value) onSubmitSurvey,
    required TResult Function(_OnProcessCheck value) onProcessCheck,
  }) {
    return onFileSelect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnInitialize value)? onInitialize,
    TResult Function(_OnChoiceSelect value)? onChoiceSelect,
    TResult Function(_OnFileSelect value)? onFileSelect,
    TResult Function(_OnSubmitSurvey value)? onSubmitSurvey,
    TResult Function(_OnProcessCheck value)? onProcessCheck,
  }) {
    return onFileSelect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInitialize value)? onInitialize,
    TResult Function(_OnChoiceSelect value)? onChoiceSelect,
    TResult Function(_OnFileSelect value)? onFileSelect,
    TResult Function(_OnSubmitSurvey value)? onSubmitSurvey,
    TResult Function(_OnProcessCheck value)? onProcessCheck,
    required TResult orElse(),
  }) {
    if (onFileSelect != null) {
      return onFileSelect(this);
    }
    return orElse();
  }
}

abstract class _OnFileSelect implements SurveyTaskEvent {
  const factory _OnFileSelect(
      {required String? path,
      required int? index,
      required FormUploadData id,
      required String? extension,
      required String taskId}) = _$_OnFileSelect;

  String? get path;
  int? get index;
  FormUploadData get id;
  String? get extension;
  String get taskId;
  @JsonKey(ignore: true)
  _$OnFileSelectCopyWith<_OnFileSelect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnSubmitSurveyCopyWith<$Res> {
  factory _$OnSubmitSurveyCopyWith(
          _OnSubmitSurvey value, $Res Function(_OnSubmitSurvey) then) =
      __$OnSubmitSurveyCopyWithImpl<$Res>;
  $Res call(
      {List<SurveyClientModel> client,
      List<QuestionAnswerModel> question,
      List<SurveyDataModel> data,
      SurveyTask task,
      List<bool> checkedData});

  $SurveyTaskCopyWith<$Res> get task;
}

/// @nodoc
class __$OnSubmitSurveyCopyWithImpl<$Res>
    extends _$SurveyTaskEventCopyWithImpl<$Res>
    implements _$OnSubmitSurveyCopyWith<$Res> {
  __$OnSubmitSurveyCopyWithImpl(
      _OnSubmitSurvey _value, $Res Function(_OnSubmitSurvey) _then)
      : super(_value, (v) => _then(v as _OnSubmitSurvey));

  @override
  _OnSubmitSurvey get _value => super._value as _OnSubmitSurvey;

  @override
  $Res call({
    Object? client = freezed,
    Object? question = freezed,
    Object? data = freezed,
    Object? task = freezed,
    Object? checkedData = freezed,
  }) {
    return _then(_OnSubmitSurvey(
      client: client == freezed
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as List<SurveyClientModel>,
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as List<QuestionAnswerModel>,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SurveyDataModel>,
      task: task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as SurveyTask,
      checkedData: checkedData == freezed
          ? _value.checkedData
          : checkedData // ignore: cast_nullable_to_non_nullable
              as List<bool>,
    ));
  }

  @override
  $SurveyTaskCopyWith<$Res> get task {
    return $SurveyTaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$_OnSubmitSurvey implements _OnSubmitSurvey {
  const _$_OnSubmitSurvey(
      {required this.client,
      required this.question,
      required this.data,
      required this.task,
      required this.checkedData});

  @override
  final List<SurveyClientModel> client;
  @override
  final List<QuestionAnswerModel> question;
  @override
  final List<SurveyDataModel> data;
  @override
  final SurveyTask task;
  @override
  final List<bool> checkedData;

  @override
  String toString() {
    return 'SurveyTaskEvent.onSubmitSurvey(client: $client, question: $question, data: $data, task: $task, checkedData: $checkedData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnSubmitSurvey &&
            const DeepCollectionEquality().equals(other.client, client) &&
            const DeepCollectionEquality().equals(other.question, question) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.task, task) &&
            const DeepCollectionEquality()
                .equals(other.checkedData, checkedData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(client),
      const DeepCollectionEquality().hash(question),
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(task),
      const DeepCollectionEquality().hash(checkedData));

  @JsonKey(ignore: true)
  @override
  _$OnSubmitSurveyCopyWith<_OnSubmitSurvey> get copyWith =>
      __$OnSubmitSurveyCopyWithImpl<_OnSubmitSurvey>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? taskId) onInitialize,
    required TResult Function(SearchModel item, String choice, String taskId)
        onChoiceSelect,
    required TResult Function(String? path, int? index, FormUploadData id,
            String? extension, String taskId)
        onFileSelect,
    required TResult Function(
            List<SurveyClientModel> client,
            List<QuestionAnswerModel> question,
            List<SurveyDataModel> data,
            SurveyTask task,
            List<bool> checkedData)
        onSubmitSurvey,
    required TResult Function(
            List<SurveyClientModel> client,
            List<QuestionAnswerModel> question,
            List<FormUploadData> formData,
            List<SurveyDataModel> data)
        onProcessCheck,
  }) {
    return onSubmitSurvey(client, question, data, task, checkedData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? taskId)? onInitialize,
    TResult Function(SearchModel item, String choice, String taskId)?
        onChoiceSelect,
    TResult Function(String? path, int? index, FormUploadData id,
            String? extension, String taskId)?
        onFileSelect,
    TResult Function(
            List<SurveyClientModel> client,
            List<QuestionAnswerModel> question,
            List<SurveyDataModel> data,
            SurveyTask task,
            List<bool> checkedData)?
        onSubmitSurvey,
    TResult Function(
            List<SurveyClientModel> client,
            List<QuestionAnswerModel> question,
            List<FormUploadData> formData,
            List<SurveyDataModel> data)?
        onProcessCheck,
  }) {
    return onSubmitSurvey?.call(client, question, data, task, checkedData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? taskId)? onInitialize,
    TResult Function(SearchModel item, String choice, String taskId)?
        onChoiceSelect,
    TResult Function(String? path, int? index, FormUploadData id,
            String? extension, String taskId)?
        onFileSelect,
    TResult Function(
            List<SurveyClientModel> client,
            List<QuestionAnswerModel> question,
            List<SurveyDataModel> data,
            SurveyTask task,
            List<bool> checkedData)?
        onSubmitSurvey,
    TResult Function(
            List<SurveyClientModel> client,
            List<QuestionAnswerModel> question,
            List<FormUploadData> formData,
            List<SurveyDataModel> data)?
        onProcessCheck,
    required TResult orElse(),
  }) {
    if (onSubmitSurvey != null) {
      return onSubmitSurvey(client, question, data, task, checkedData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInitialize value) onInitialize,
    required TResult Function(_OnChoiceSelect value) onChoiceSelect,
    required TResult Function(_OnFileSelect value) onFileSelect,
    required TResult Function(_OnSubmitSurvey value) onSubmitSurvey,
    required TResult Function(_OnProcessCheck value) onProcessCheck,
  }) {
    return onSubmitSurvey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnInitialize value)? onInitialize,
    TResult Function(_OnChoiceSelect value)? onChoiceSelect,
    TResult Function(_OnFileSelect value)? onFileSelect,
    TResult Function(_OnSubmitSurvey value)? onSubmitSurvey,
    TResult Function(_OnProcessCheck value)? onProcessCheck,
  }) {
    return onSubmitSurvey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInitialize value)? onInitialize,
    TResult Function(_OnChoiceSelect value)? onChoiceSelect,
    TResult Function(_OnFileSelect value)? onFileSelect,
    TResult Function(_OnSubmitSurvey value)? onSubmitSurvey,
    TResult Function(_OnProcessCheck value)? onProcessCheck,
    required TResult orElse(),
  }) {
    if (onSubmitSurvey != null) {
      return onSubmitSurvey(this);
    }
    return orElse();
  }
}

abstract class _OnSubmitSurvey implements SurveyTaskEvent {
  const factory _OnSubmitSurvey(
      {required List<SurveyClientModel> client,
      required List<QuestionAnswerModel> question,
      required List<SurveyDataModel> data,
      required SurveyTask task,
      required List<bool> checkedData}) = _$_OnSubmitSurvey;

  List<SurveyClientModel> get client;
  List<QuestionAnswerModel> get question;
  List<SurveyDataModel> get data;
  SurveyTask get task;
  List<bool> get checkedData;
  @JsonKey(ignore: true)
  _$OnSubmitSurveyCopyWith<_OnSubmitSurvey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnProcessCheckCopyWith<$Res> {
  factory _$OnProcessCheckCopyWith(
          _OnProcessCheck value, $Res Function(_OnProcessCheck) then) =
      __$OnProcessCheckCopyWithImpl<$Res>;
  $Res call(
      {List<SurveyClientModel> client,
      List<QuestionAnswerModel> question,
      List<FormUploadData> formData,
      List<SurveyDataModel> data});
}

/// @nodoc
class __$OnProcessCheckCopyWithImpl<$Res>
    extends _$SurveyTaskEventCopyWithImpl<$Res>
    implements _$OnProcessCheckCopyWith<$Res> {
  __$OnProcessCheckCopyWithImpl(
      _OnProcessCheck _value, $Res Function(_OnProcessCheck) _then)
      : super(_value, (v) => _then(v as _OnProcessCheck));

  @override
  _OnProcessCheck get _value => super._value as _OnProcessCheck;

  @override
  $Res call({
    Object? client = freezed,
    Object? question = freezed,
    Object? formData = freezed,
    Object? data = freezed,
  }) {
    return _then(_OnProcessCheck(
      client: client == freezed
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as List<SurveyClientModel>,
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as List<QuestionAnswerModel>,
      formData: formData == freezed
          ? _value.formData
          : formData // ignore: cast_nullable_to_non_nullable
              as List<FormUploadData>,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SurveyDataModel>,
    ));
  }
}

/// @nodoc

class _$_OnProcessCheck implements _OnProcessCheck {
  const _$_OnProcessCheck(
      {required this.client,
      required this.question,
      required this.formData,
      required this.data});

  @override
  final List<SurveyClientModel> client;
  @override
  final List<QuestionAnswerModel> question;
  @override
  final List<FormUploadData> formData;
  @override
  final List<SurveyDataModel> data;

  @override
  String toString() {
    return 'SurveyTaskEvent.onProcessCheck(client: $client, question: $question, formData: $formData, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnProcessCheck &&
            const DeepCollectionEquality().equals(other.client, client) &&
            const DeepCollectionEquality().equals(other.question, question) &&
            const DeepCollectionEquality().equals(other.formData, formData) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(client),
      const DeepCollectionEquality().hash(question),
      const DeepCollectionEquality().hash(formData),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$OnProcessCheckCopyWith<_OnProcessCheck> get copyWith =>
      __$OnProcessCheckCopyWithImpl<_OnProcessCheck>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? taskId) onInitialize,
    required TResult Function(SearchModel item, String choice, String taskId)
        onChoiceSelect,
    required TResult Function(String? path, int? index, FormUploadData id,
            String? extension, String taskId)
        onFileSelect,
    required TResult Function(
            List<SurveyClientModel> client,
            List<QuestionAnswerModel> question,
            List<SurveyDataModel> data,
            SurveyTask task,
            List<bool> checkedData)
        onSubmitSurvey,
    required TResult Function(
            List<SurveyClientModel> client,
            List<QuestionAnswerModel> question,
            List<FormUploadData> formData,
            List<SurveyDataModel> data)
        onProcessCheck,
  }) {
    return onProcessCheck(client, question, formData, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? taskId)? onInitialize,
    TResult Function(SearchModel item, String choice, String taskId)?
        onChoiceSelect,
    TResult Function(String? path, int? index, FormUploadData id,
            String? extension, String taskId)?
        onFileSelect,
    TResult Function(
            List<SurveyClientModel> client,
            List<QuestionAnswerModel> question,
            List<SurveyDataModel> data,
            SurveyTask task,
            List<bool> checkedData)?
        onSubmitSurvey,
    TResult Function(
            List<SurveyClientModel> client,
            List<QuestionAnswerModel> question,
            List<FormUploadData> formData,
            List<SurveyDataModel> data)?
        onProcessCheck,
  }) {
    return onProcessCheck?.call(client, question, formData, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? taskId)? onInitialize,
    TResult Function(SearchModel item, String choice, String taskId)?
        onChoiceSelect,
    TResult Function(String? path, int? index, FormUploadData id,
            String? extension, String taskId)?
        onFileSelect,
    TResult Function(
            List<SurveyClientModel> client,
            List<QuestionAnswerModel> question,
            List<SurveyDataModel> data,
            SurveyTask task,
            List<bool> checkedData)?
        onSubmitSurvey,
    TResult Function(
            List<SurveyClientModel> client,
            List<QuestionAnswerModel> question,
            List<FormUploadData> formData,
            List<SurveyDataModel> data)?
        onProcessCheck,
    required TResult orElse(),
  }) {
    if (onProcessCheck != null) {
      return onProcessCheck(client, question, formData, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInitialize value) onInitialize,
    required TResult Function(_OnChoiceSelect value) onChoiceSelect,
    required TResult Function(_OnFileSelect value) onFileSelect,
    required TResult Function(_OnSubmitSurvey value) onSubmitSurvey,
    required TResult Function(_OnProcessCheck value) onProcessCheck,
  }) {
    return onProcessCheck(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnInitialize value)? onInitialize,
    TResult Function(_OnChoiceSelect value)? onChoiceSelect,
    TResult Function(_OnFileSelect value)? onFileSelect,
    TResult Function(_OnSubmitSurvey value)? onSubmitSurvey,
    TResult Function(_OnProcessCheck value)? onProcessCheck,
  }) {
    return onProcessCheck?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInitialize value)? onInitialize,
    TResult Function(_OnChoiceSelect value)? onChoiceSelect,
    TResult Function(_OnFileSelect value)? onFileSelect,
    TResult Function(_OnSubmitSurvey value)? onSubmitSurvey,
    TResult Function(_OnProcessCheck value)? onProcessCheck,
    required TResult orElse(),
  }) {
    if (onProcessCheck != null) {
      return onProcessCheck(this);
    }
    return orElse();
  }
}

abstract class _OnProcessCheck implements SurveyTaskEvent {
  const factory _OnProcessCheck(
      {required List<SurveyClientModel> client,
      required List<QuestionAnswerModel> question,
      required List<FormUploadData> formData,
      required List<SurveyDataModel> data}) = _$_OnProcessCheck;

  List<SurveyClientModel> get client;
  List<QuestionAnswerModel> get question;
  List<FormUploadData> get formData;
  List<SurveyDataModel> get data;
  @JsonKey(ignore: true)
  _$OnProcessCheckCopyWith<_OnProcessCheck> get copyWith =>
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
      required List<FormUploadData> document,
      required List<SurveyClientModel> client,
      required List<ZipcodeData> zipcode,
      required List<SurveyDataModel> data}) {
    return _CheckClientSuccess(
      questions: questions,
      assets: assets,
      document: document,
      client: client,
      zipcode: zipcode,
      data: data,
    );
  }

  _SelectChoiceSuccess selectChoiceSuccess(
      {required SearchModel item, required String choice}) {
    return _SelectChoiceSuccess(
      item: item,
      choice: choice,
    );
  }

  _SelectFileSuccess selectFileSuccess({required SurveyDataModel data}) {
    return _SelectFileSuccess(
      data: data,
    );
  }

  _SubmitSuccess submitSuccess({required SurveyTask task}) {
    return _SubmitSuccess(
      task: task,
    );
  }

  _SubmitFailed submitFailed({required GenericFailure failure}) {
    return _SubmitFailed(
      failure: failure,
    );
  }

  _CheckCompletedData checkCompletedData(
      {required bool clientCompleted,
      required bool questionCompleted,
      required bool assetsCompleted,
      required bool documentsCompleted}) {
    return _CheckCompletedData(
      clientCompleted: clientCompleted,
      questionCompleted: questionCompleted,
      assetsCompleted: assetsCompleted,
      documentsCompleted: documentsCompleted,
    );
  }

  _IsMandatory isMandatory({required String reason}) {
    return _IsMandatory(
      reason: reason,
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
    required TResult Function(
            List<QuestionAnswerModel> questions,
            List<FormUploadData> assets,
            List<FormUploadData> document,
            List<SurveyClientModel> client,
            List<ZipcodeData> zipcode,
            List<SurveyDataModel> data)
        checkClientSuccess,
    required TResult Function(SearchModel item, String choice)
        selectChoiceSuccess,
    required TResult Function(SurveyDataModel data) selectFileSuccess,
    required TResult Function(SurveyTask task) submitSuccess,
    required TResult Function(GenericFailure failure) submitFailed,
    required TResult Function(bool clientCompleted, bool questionCompleted,
            bool assetsCompleted, bool documentsCompleted)
        checkCompletedData,
    required TResult Function(String reason) isMandatory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<QuestionAnswerModel> questions,
            List<FormUploadData> assets,
            List<FormUploadData> document,
            List<SurveyClientModel> client,
            List<ZipcodeData> zipcode,
            List<SurveyDataModel> data)?
        checkClientSuccess,
    TResult Function(SearchModel item, String choice)? selectChoiceSuccess,
    TResult Function(SurveyDataModel data)? selectFileSuccess,
    TResult Function(SurveyTask task)? submitSuccess,
    TResult Function(GenericFailure failure)? submitFailed,
    TResult Function(bool clientCompleted, bool questionCompleted,
            bool assetsCompleted, bool documentsCompleted)?
        checkCompletedData,
    TResult Function(String reason)? isMandatory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<QuestionAnswerModel> questions,
            List<FormUploadData> assets,
            List<FormUploadData> document,
            List<SurveyClientModel> client,
            List<ZipcodeData> zipcode,
            List<SurveyDataModel> data)?
        checkClientSuccess,
    TResult Function(SearchModel item, String choice)? selectChoiceSuccess,
    TResult Function(SurveyDataModel data)? selectFileSuccess,
    TResult Function(SurveyTask task)? submitSuccess,
    TResult Function(GenericFailure failure)? submitFailed,
    TResult Function(bool clientCompleted, bool questionCompleted,
            bool assetsCompleted, bool documentsCompleted)?
        checkCompletedData,
    TResult Function(String reason)? isMandatory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CheckClientSuccess value) checkClientSuccess,
    required TResult Function(_SelectChoiceSuccess value) selectChoiceSuccess,
    required TResult Function(_SelectFileSuccess value) selectFileSuccess,
    required TResult Function(_SubmitSuccess value) submitSuccess,
    required TResult Function(_SubmitFailed value) submitFailed,
    required TResult Function(_CheckCompletedData value) checkCompletedData,
    required TResult Function(_IsMandatory value) isMandatory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CheckClientSuccess value)? checkClientSuccess,
    TResult Function(_SelectChoiceSuccess value)? selectChoiceSuccess,
    TResult Function(_SelectFileSuccess value)? selectFileSuccess,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailed value)? submitFailed,
    TResult Function(_CheckCompletedData value)? checkCompletedData,
    TResult Function(_IsMandatory value)? isMandatory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CheckClientSuccess value)? checkClientSuccess,
    TResult Function(_SelectChoiceSuccess value)? selectChoiceSuccess,
    TResult Function(_SelectFileSuccess value)? selectFileSuccess,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailed value)? submitFailed,
    TResult Function(_CheckCompletedData value)? checkCompletedData,
    TResult Function(_IsMandatory value)? isMandatory,
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
    required TResult Function(
            List<QuestionAnswerModel> questions,
            List<FormUploadData> assets,
            List<FormUploadData> document,
            List<SurveyClientModel> client,
            List<ZipcodeData> zipcode,
            List<SurveyDataModel> data)
        checkClientSuccess,
    required TResult Function(SearchModel item, String choice)
        selectChoiceSuccess,
    required TResult Function(SurveyDataModel data) selectFileSuccess,
    required TResult Function(SurveyTask task) submitSuccess,
    required TResult Function(GenericFailure failure) submitFailed,
    required TResult Function(bool clientCompleted, bool questionCompleted,
            bool assetsCompleted, bool documentsCompleted)
        checkCompletedData,
    required TResult Function(String reason) isMandatory,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<QuestionAnswerModel> questions,
            List<FormUploadData> assets,
            List<FormUploadData> document,
            List<SurveyClientModel> client,
            List<ZipcodeData> zipcode,
            List<SurveyDataModel> data)?
        checkClientSuccess,
    TResult Function(SearchModel item, String choice)? selectChoiceSuccess,
    TResult Function(SurveyDataModel data)? selectFileSuccess,
    TResult Function(SurveyTask task)? submitSuccess,
    TResult Function(GenericFailure failure)? submitFailed,
    TResult Function(bool clientCompleted, bool questionCompleted,
            bool assetsCompleted, bool documentsCompleted)?
        checkCompletedData,
    TResult Function(String reason)? isMandatory,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<QuestionAnswerModel> questions,
            List<FormUploadData> assets,
            List<FormUploadData> document,
            List<SurveyClientModel> client,
            List<ZipcodeData> zipcode,
            List<SurveyDataModel> data)?
        checkClientSuccess,
    TResult Function(SearchModel item, String choice)? selectChoiceSuccess,
    TResult Function(SurveyDataModel data)? selectFileSuccess,
    TResult Function(SurveyTask task)? submitSuccess,
    TResult Function(GenericFailure failure)? submitFailed,
    TResult Function(bool clientCompleted, bool questionCompleted,
            bool assetsCompleted, bool documentsCompleted)?
        checkCompletedData,
    TResult Function(String reason)? isMandatory,
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
    required TResult Function(_SelectFileSuccess value) selectFileSuccess,
    required TResult Function(_SubmitSuccess value) submitSuccess,
    required TResult Function(_SubmitFailed value) submitFailed,
    required TResult Function(_CheckCompletedData value) checkCompletedData,
    required TResult Function(_IsMandatory value) isMandatory,
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
    TResult Function(_SelectFileSuccess value)? selectFileSuccess,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailed value)? submitFailed,
    TResult Function(_CheckCompletedData value)? checkCompletedData,
    TResult Function(_IsMandatory value)? isMandatory,
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
    TResult Function(_SelectFileSuccess value)? selectFileSuccess,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailed value)? submitFailed,
    TResult Function(_CheckCompletedData value)? checkCompletedData,
    TResult Function(_IsMandatory value)? isMandatory,
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
    required TResult Function(
            List<QuestionAnswerModel> questions,
            List<FormUploadData> assets,
            List<FormUploadData> document,
            List<SurveyClientModel> client,
            List<ZipcodeData> zipcode,
            List<SurveyDataModel> data)
        checkClientSuccess,
    required TResult Function(SearchModel item, String choice)
        selectChoiceSuccess,
    required TResult Function(SurveyDataModel data) selectFileSuccess,
    required TResult Function(SurveyTask task) submitSuccess,
    required TResult Function(GenericFailure failure) submitFailed,
    required TResult Function(bool clientCompleted, bool questionCompleted,
            bool assetsCompleted, bool documentsCompleted)
        checkCompletedData,
    required TResult Function(String reason) isMandatory,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<QuestionAnswerModel> questions,
            List<FormUploadData> assets,
            List<FormUploadData> document,
            List<SurveyClientModel> client,
            List<ZipcodeData> zipcode,
            List<SurveyDataModel> data)?
        checkClientSuccess,
    TResult Function(SearchModel item, String choice)? selectChoiceSuccess,
    TResult Function(SurveyDataModel data)? selectFileSuccess,
    TResult Function(SurveyTask task)? submitSuccess,
    TResult Function(GenericFailure failure)? submitFailed,
    TResult Function(bool clientCompleted, bool questionCompleted,
            bool assetsCompleted, bool documentsCompleted)?
        checkCompletedData,
    TResult Function(String reason)? isMandatory,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<QuestionAnswerModel> questions,
            List<FormUploadData> assets,
            List<FormUploadData> document,
            List<SurveyClientModel> client,
            List<ZipcodeData> zipcode,
            List<SurveyDataModel> data)?
        checkClientSuccess,
    TResult Function(SearchModel item, String choice)? selectChoiceSuccess,
    TResult Function(SurveyDataModel data)? selectFileSuccess,
    TResult Function(SurveyTask task)? submitSuccess,
    TResult Function(GenericFailure failure)? submitFailed,
    TResult Function(bool clientCompleted, bool questionCompleted,
            bool assetsCompleted, bool documentsCompleted)?
        checkCompletedData,
    TResult Function(String reason)? isMandatory,
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
    required TResult Function(_SelectFileSuccess value) selectFileSuccess,
    required TResult Function(_SubmitSuccess value) submitSuccess,
    required TResult Function(_SubmitFailed value) submitFailed,
    required TResult Function(_CheckCompletedData value) checkCompletedData,
    required TResult Function(_IsMandatory value) isMandatory,
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
    TResult Function(_SelectFileSuccess value)? selectFileSuccess,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailed value)? submitFailed,
    TResult Function(_CheckCompletedData value)? checkCompletedData,
    TResult Function(_IsMandatory value)? isMandatory,
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
    TResult Function(_SelectFileSuccess value)? selectFileSuccess,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailed value)? submitFailed,
    TResult Function(_CheckCompletedData value)? checkCompletedData,
    TResult Function(_IsMandatory value)? isMandatory,
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
      List<FormUploadData> document,
      List<SurveyClientModel> client,
      List<ZipcodeData> zipcode,
      List<SurveyDataModel> data});
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
    Object? client = freezed,
    Object? zipcode = freezed,
    Object? data = freezed,
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
      client: client == freezed
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as List<SurveyClientModel>,
      zipcode: zipcode == freezed
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as List<ZipcodeData>,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SurveyDataModel>,
    ));
  }
}

/// @nodoc

class _$_CheckClientSuccess implements _CheckClientSuccess {
  const _$_CheckClientSuccess(
      {required this.questions,
      required this.assets,
      required this.document,
      required this.client,
      required this.zipcode,
      required this.data});

  @override
  final List<QuestionAnswerModel> questions;
  @override
  final List<FormUploadData> assets;
  @override
  final List<FormUploadData> document;
  @override
  final List<SurveyClientModel> client;
  @override
  final List<ZipcodeData> zipcode;
  @override
  final List<SurveyDataModel> data;

  @override
  String toString() {
    return 'SurveyTaskState.checkClientSuccess(questions: $questions, assets: $assets, document: $document, client: $client, zipcode: $zipcode, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CheckClientSuccess &&
            const DeepCollectionEquality().equals(other.questions, questions) &&
            const DeepCollectionEquality().equals(other.assets, assets) &&
            const DeepCollectionEquality().equals(other.document, document) &&
            const DeepCollectionEquality().equals(other.client, client) &&
            const DeepCollectionEquality().equals(other.zipcode, zipcode) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(questions),
      const DeepCollectionEquality().hash(assets),
      const DeepCollectionEquality().hash(document),
      const DeepCollectionEquality().hash(client),
      const DeepCollectionEquality().hash(zipcode),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$CheckClientSuccessCopyWith<_CheckClientSuccess> get copyWith =>
      __$CheckClientSuccessCopyWithImpl<_CheckClientSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<QuestionAnswerModel> questions,
            List<FormUploadData> assets,
            List<FormUploadData> document,
            List<SurveyClientModel> client,
            List<ZipcodeData> zipcode,
            List<SurveyDataModel> data)
        checkClientSuccess,
    required TResult Function(SearchModel item, String choice)
        selectChoiceSuccess,
    required TResult Function(SurveyDataModel data) selectFileSuccess,
    required TResult Function(SurveyTask task) submitSuccess,
    required TResult Function(GenericFailure failure) submitFailed,
    required TResult Function(bool clientCompleted, bool questionCompleted,
            bool assetsCompleted, bool documentsCompleted)
        checkCompletedData,
    required TResult Function(String reason) isMandatory,
  }) {
    return checkClientSuccess(
        questions, assets, document, client, zipcode, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<QuestionAnswerModel> questions,
            List<FormUploadData> assets,
            List<FormUploadData> document,
            List<SurveyClientModel> client,
            List<ZipcodeData> zipcode,
            List<SurveyDataModel> data)?
        checkClientSuccess,
    TResult Function(SearchModel item, String choice)? selectChoiceSuccess,
    TResult Function(SurveyDataModel data)? selectFileSuccess,
    TResult Function(SurveyTask task)? submitSuccess,
    TResult Function(GenericFailure failure)? submitFailed,
    TResult Function(bool clientCompleted, bool questionCompleted,
            bool assetsCompleted, bool documentsCompleted)?
        checkCompletedData,
    TResult Function(String reason)? isMandatory,
  }) {
    return checkClientSuccess?.call(
        questions, assets, document, client, zipcode, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<QuestionAnswerModel> questions,
            List<FormUploadData> assets,
            List<FormUploadData> document,
            List<SurveyClientModel> client,
            List<ZipcodeData> zipcode,
            List<SurveyDataModel> data)?
        checkClientSuccess,
    TResult Function(SearchModel item, String choice)? selectChoiceSuccess,
    TResult Function(SurveyDataModel data)? selectFileSuccess,
    TResult Function(SurveyTask task)? submitSuccess,
    TResult Function(GenericFailure failure)? submitFailed,
    TResult Function(bool clientCompleted, bool questionCompleted,
            bool assetsCompleted, bool documentsCompleted)?
        checkCompletedData,
    TResult Function(String reason)? isMandatory,
    required TResult orElse(),
  }) {
    if (checkClientSuccess != null) {
      return checkClientSuccess(
          questions, assets, document, client, zipcode, data);
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
    required TResult Function(_SelectFileSuccess value) selectFileSuccess,
    required TResult Function(_SubmitSuccess value) submitSuccess,
    required TResult Function(_SubmitFailed value) submitFailed,
    required TResult Function(_CheckCompletedData value) checkCompletedData,
    required TResult Function(_IsMandatory value) isMandatory,
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
    TResult Function(_SelectFileSuccess value)? selectFileSuccess,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailed value)? submitFailed,
    TResult Function(_CheckCompletedData value)? checkCompletedData,
    TResult Function(_IsMandatory value)? isMandatory,
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
    TResult Function(_SelectFileSuccess value)? selectFileSuccess,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailed value)? submitFailed,
    TResult Function(_CheckCompletedData value)? checkCompletedData,
    TResult Function(_IsMandatory value)? isMandatory,
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
      required List<FormUploadData> document,
      required List<SurveyClientModel> client,
      required List<ZipcodeData> zipcode,
      required List<SurveyDataModel> data}) = _$_CheckClientSuccess;

  List<QuestionAnswerModel> get questions;
  List<FormUploadData> get assets;
  List<FormUploadData> get document;
  List<SurveyClientModel> get client;
  List<ZipcodeData> get zipcode;
  List<SurveyDataModel> get data;
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
    required TResult Function(
            List<QuestionAnswerModel> questions,
            List<FormUploadData> assets,
            List<FormUploadData> document,
            List<SurveyClientModel> client,
            List<ZipcodeData> zipcode,
            List<SurveyDataModel> data)
        checkClientSuccess,
    required TResult Function(SearchModel item, String choice)
        selectChoiceSuccess,
    required TResult Function(SurveyDataModel data) selectFileSuccess,
    required TResult Function(SurveyTask task) submitSuccess,
    required TResult Function(GenericFailure failure) submitFailed,
    required TResult Function(bool clientCompleted, bool questionCompleted,
            bool assetsCompleted, bool documentsCompleted)
        checkCompletedData,
    required TResult Function(String reason) isMandatory,
  }) {
    return selectChoiceSuccess(item, choice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<QuestionAnswerModel> questions,
            List<FormUploadData> assets,
            List<FormUploadData> document,
            List<SurveyClientModel> client,
            List<ZipcodeData> zipcode,
            List<SurveyDataModel> data)?
        checkClientSuccess,
    TResult Function(SearchModel item, String choice)? selectChoiceSuccess,
    TResult Function(SurveyDataModel data)? selectFileSuccess,
    TResult Function(SurveyTask task)? submitSuccess,
    TResult Function(GenericFailure failure)? submitFailed,
    TResult Function(bool clientCompleted, bool questionCompleted,
            bool assetsCompleted, bool documentsCompleted)?
        checkCompletedData,
    TResult Function(String reason)? isMandatory,
  }) {
    return selectChoiceSuccess?.call(item, choice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<QuestionAnswerModel> questions,
            List<FormUploadData> assets,
            List<FormUploadData> document,
            List<SurveyClientModel> client,
            List<ZipcodeData> zipcode,
            List<SurveyDataModel> data)?
        checkClientSuccess,
    TResult Function(SearchModel item, String choice)? selectChoiceSuccess,
    TResult Function(SurveyDataModel data)? selectFileSuccess,
    TResult Function(SurveyTask task)? submitSuccess,
    TResult Function(GenericFailure failure)? submitFailed,
    TResult Function(bool clientCompleted, bool questionCompleted,
            bool assetsCompleted, bool documentsCompleted)?
        checkCompletedData,
    TResult Function(String reason)? isMandatory,
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
    required TResult Function(_SelectFileSuccess value) selectFileSuccess,
    required TResult Function(_SubmitSuccess value) submitSuccess,
    required TResult Function(_SubmitFailed value) submitFailed,
    required TResult Function(_CheckCompletedData value) checkCompletedData,
    required TResult Function(_IsMandatory value) isMandatory,
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
    TResult Function(_SelectFileSuccess value)? selectFileSuccess,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailed value)? submitFailed,
    TResult Function(_CheckCompletedData value)? checkCompletedData,
    TResult Function(_IsMandatory value)? isMandatory,
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
    TResult Function(_SelectFileSuccess value)? selectFileSuccess,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailed value)? submitFailed,
    TResult Function(_CheckCompletedData value)? checkCompletedData,
    TResult Function(_IsMandatory value)? isMandatory,
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

/// @nodoc
abstract class _$SelectFileSuccessCopyWith<$Res> {
  factory _$SelectFileSuccessCopyWith(
          _SelectFileSuccess value, $Res Function(_SelectFileSuccess) then) =
      __$SelectFileSuccessCopyWithImpl<$Res>;
  $Res call({SurveyDataModel data});

  $SurveyDataModelCopyWith<$Res> get data;
}

/// @nodoc
class __$SelectFileSuccessCopyWithImpl<$Res>
    extends _$SurveyTaskStateCopyWithImpl<$Res>
    implements _$SelectFileSuccessCopyWith<$Res> {
  __$SelectFileSuccessCopyWithImpl(
      _SelectFileSuccess _value, $Res Function(_SelectFileSuccess) _then)
      : super(_value, (v) => _then(v as _SelectFileSuccess));

  @override
  _SelectFileSuccess get _value => super._value as _SelectFileSuccess;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_SelectFileSuccess(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SurveyDataModel,
    ));
  }

  @override
  $SurveyDataModelCopyWith<$Res> get data {
    return $SurveyDataModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_SelectFileSuccess implements _SelectFileSuccess {
  const _$_SelectFileSuccess({required this.data});

  @override
  final SurveyDataModel data;

  @override
  String toString() {
    return 'SurveyTaskState.selectFileSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SelectFileSuccess &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$SelectFileSuccessCopyWith<_SelectFileSuccess> get copyWith =>
      __$SelectFileSuccessCopyWithImpl<_SelectFileSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<QuestionAnswerModel> questions,
            List<FormUploadData> assets,
            List<FormUploadData> document,
            List<SurveyClientModel> client,
            List<ZipcodeData> zipcode,
            List<SurveyDataModel> data)
        checkClientSuccess,
    required TResult Function(SearchModel item, String choice)
        selectChoiceSuccess,
    required TResult Function(SurveyDataModel data) selectFileSuccess,
    required TResult Function(SurveyTask task) submitSuccess,
    required TResult Function(GenericFailure failure) submitFailed,
    required TResult Function(bool clientCompleted, bool questionCompleted,
            bool assetsCompleted, bool documentsCompleted)
        checkCompletedData,
    required TResult Function(String reason) isMandatory,
  }) {
    return selectFileSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<QuestionAnswerModel> questions,
            List<FormUploadData> assets,
            List<FormUploadData> document,
            List<SurveyClientModel> client,
            List<ZipcodeData> zipcode,
            List<SurveyDataModel> data)?
        checkClientSuccess,
    TResult Function(SearchModel item, String choice)? selectChoiceSuccess,
    TResult Function(SurveyDataModel data)? selectFileSuccess,
    TResult Function(SurveyTask task)? submitSuccess,
    TResult Function(GenericFailure failure)? submitFailed,
    TResult Function(bool clientCompleted, bool questionCompleted,
            bool assetsCompleted, bool documentsCompleted)?
        checkCompletedData,
    TResult Function(String reason)? isMandatory,
  }) {
    return selectFileSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<QuestionAnswerModel> questions,
            List<FormUploadData> assets,
            List<FormUploadData> document,
            List<SurveyClientModel> client,
            List<ZipcodeData> zipcode,
            List<SurveyDataModel> data)?
        checkClientSuccess,
    TResult Function(SearchModel item, String choice)? selectChoiceSuccess,
    TResult Function(SurveyDataModel data)? selectFileSuccess,
    TResult Function(SurveyTask task)? submitSuccess,
    TResult Function(GenericFailure failure)? submitFailed,
    TResult Function(bool clientCompleted, bool questionCompleted,
            bool assetsCompleted, bool documentsCompleted)?
        checkCompletedData,
    TResult Function(String reason)? isMandatory,
    required TResult orElse(),
  }) {
    if (selectFileSuccess != null) {
      return selectFileSuccess(data);
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
    required TResult Function(_SelectFileSuccess value) selectFileSuccess,
    required TResult Function(_SubmitSuccess value) submitSuccess,
    required TResult Function(_SubmitFailed value) submitFailed,
    required TResult Function(_CheckCompletedData value) checkCompletedData,
    required TResult Function(_IsMandatory value) isMandatory,
  }) {
    return selectFileSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CheckClientSuccess value)? checkClientSuccess,
    TResult Function(_SelectChoiceSuccess value)? selectChoiceSuccess,
    TResult Function(_SelectFileSuccess value)? selectFileSuccess,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailed value)? submitFailed,
    TResult Function(_CheckCompletedData value)? checkCompletedData,
    TResult Function(_IsMandatory value)? isMandatory,
  }) {
    return selectFileSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CheckClientSuccess value)? checkClientSuccess,
    TResult Function(_SelectChoiceSuccess value)? selectChoiceSuccess,
    TResult Function(_SelectFileSuccess value)? selectFileSuccess,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailed value)? submitFailed,
    TResult Function(_CheckCompletedData value)? checkCompletedData,
    TResult Function(_IsMandatory value)? isMandatory,
    required TResult orElse(),
  }) {
    if (selectFileSuccess != null) {
      return selectFileSuccess(this);
    }
    return orElse();
  }
}

abstract class _SelectFileSuccess implements SurveyTaskState {
  const factory _SelectFileSuccess({required SurveyDataModel data}) =
      _$_SelectFileSuccess;

  SurveyDataModel get data;
  @JsonKey(ignore: true)
  _$SelectFileSuccessCopyWith<_SelectFileSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubmitSuccessCopyWith<$Res> {
  factory _$SubmitSuccessCopyWith(
          _SubmitSuccess value, $Res Function(_SubmitSuccess) then) =
      __$SubmitSuccessCopyWithImpl<$Res>;
  $Res call({SurveyTask task});

  $SurveyTaskCopyWith<$Res> get task;
}

/// @nodoc
class __$SubmitSuccessCopyWithImpl<$Res>
    extends _$SurveyTaskStateCopyWithImpl<$Res>
    implements _$SubmitSuccessCopyWith<$Res> {
  __$SubmitSuccessCopyWithImpl(
      _SubmitSuccess _value, $Res Function(_SubmitSuccess) _then)
      : super(_value, (v) => _then(v as _SubmitSuccess));

  @override
  _SubmitSuccess get _value => super._value as _SubmitSuccess;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_SubmitSuccess(
      task: task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as SurveyTask,
    ));
  }

  @override
  $SurveyTaskCopyWith<$Res> get task {
    return $SurveyTaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$_SubmitSuccess implements _SubmitSuccess {
  const _$_SubmitSuccess({required this.task});

  @override
  final SurveyTask task;

  @override
  String toString() {
    return 'SurveyTaskState.submitSuccess(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubmitSuccess &&
            const DeepCollectionEquality().equals(other.task, task));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(task));

  @JsonKey(ignore: true)
  @override
  _$SubmitSuccessCopyWith<_SubmitSuccess> get copyWith =>
      __$SubmitSuccessCopyWithImpl<_SubmitSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<QuestionAnswerModel> questions,
            List<FormUploadData> assets,
            List<FormUploadData> document,
            List<SurveyClientModel> client,
            List<ZipcodeData> zipcode,
            List<SurveyDataModel> data)
        checkClientSuccess,
    required TResult Function(SearchModel item, String choice)
        selectChoiceSuccess,
    required TResult Function(SurveyDataModel data) selectFileSuccess,
    required TResult Function(SurveyTask task) submitSuccess,
    required TResult Function(GenericFailure failure) submitFailed,
    required TResult Function(bool clientCompleted, bool questionCompleted,
            bool assetsCompleted, bool documentsCompleted)
        checkCompletedData,
    required TResult Function(String reason) isMandatory,
  }) {
    return submitSuccess(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<QuestionAnswerModel> questions,
            List<FormUploadData> assets,
            List<FormUploadData> document,
            List<SurveyClientModel> client,
            List<ZipcodeData> zipcode,
            List<SurveyDataModel> data)?
        checkClientSuccess,
    TResult Function(SearchModel item, String choice)? selectChoiceSuccess,
    TResult Function(SurveyDataModel data)? selectFileSuccess,
    TResult Function(SurveyTask task)? submitSuccess,
    TResult Function(GenericFailure failure)? submitFailed,
    TResult Function(bool clientCompleted, bool questionCompleted,
            bool assetsCompleted, bool documentsCompleted)?
        checkCompletedData,
    TResult Function(String reason)? isMandatory,
  }) {
    return submitSuccess?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<QuestionAnswerModel> questions,
            List<FormUploadData> assets,
            List<FormUploadData> document,
            List<SurveyClientModel> client,
            List<ZipcodeData> zipcode,
            List<SurveyDataModel> data)?
        checkClientSuccess,
    TResult Function(SearchModel item, String choice)? selectChoiceSuccess,
    TResult Function(SurveyDataModel data)? selectFileSuccess,
    TResult Function(SurveyTask task)? submitSuccess,
    TResult Function(GenericFailure failure)? submitFailed,
    TResult Function(bool clientCompleted, bool questionCompleted,
            bool assetsCompleted, bool documentsCompleted)?
        checkCompletedData,
    TResult Function(String reason)? isMandatory,
    required TResult orElse(),
  }) {
    if (submitSuccess != null) {
      return submitSuccess(task);
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
    required TResult Function(_SelectFileSuccess value) selectFileSuccess,
    required TResult Function(_SubmitSuccess value) submitSuccess,
    required TResult Function(_SubmitFailed value) submitFailed,
    required TResult Function(_CheckCompletedData value) checkCompletedData,
    required TResult Function(_IsMandatory value) isMandatory,
  }) {
    return submitSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CheckClientSuccess value)? checkClientSuccess,
    TResult Function(_SelectChoiceSuccess value)? selectChoiceSuccess,
    TResult Function(_SelectFileSuccess value)? selectFileSuccess,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailed value)? submitFailed,
    TResult Function(_CheckCompletedData value)? checkCompletedData,
    TResult Function(_IsMandatory value)? isMandatory,
  }) {
    return submitSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CheckClientSuccess value)? checkClientSuccess,
    TResult Function(_SelectChoiceSuccess value)? selectChoiceSuccess,
    TResult Function(_SelectFileSuccess value)? selectFileSuccess,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailed value)? submitFailed,
    TResult Function(_CheckCompletedData value)? checkCompletedData,
    TResult Function(_IsMandatory value)? isMandatory,
    required TResult orElse(),
  }) {
    if (submitSuccess != null) {
      return submitSuccess(this);
    }
    return orElse();
  }
}

abstract class _SubmitSuccess implements SurveyTaskState {
  const factory _SubmitSuccess({required SurveyTask task}) = _$_SubmitSuccess;

  SurveyTask get task;
  @JsonKey(ignore: true)
  _$SubmitSuccessCopyWith<_SubmitSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubmitFailedCopyWith<$Res> {
  factory _$SubmitFailedCopyWith(
          _SubmitFailed value, $Res Function(_SubmitFailed) then) =
      __$SubmitFailedCopyWithImpl<$Res>;
  $Res call({GenericFailure failure});

  $GenericFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$SubmitFailedCopyWithImpl<$Res>
    extends _$SurveyTaskStateCopyWithImpl<$Res>
    implements _$SubmitFailedCopyWith<$Res> {
  __$SubmitFailedCopyWithImpl(
      _SubmitFailed _value, $Res Function(_SubmitFailed) _then)
      : super(_value, (v) => _then(v as _SubmitFailed));

  @override
  _SubmitFailed get _value => super._value as _SubmitFailed;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_SubmitFailed(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as GenericFailure,
    ));
  }

  @override
  $GenericFailureCopyWith<$Res> get failure {
    return $GenericFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_SubmitFailed implements _SubmitFailed {
  const _$_SubmitFailed({required this.failure});

  @override
  final GenericFailure failure;

  @override
  String toString() {
    return 'SurveyTaskState.submitFailed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubmitFailed &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$SubmitFailedCopyWith<_SubmitFailed> get copyWith =>
      __$SubmitFailedCopyWithImpl<_SubmitFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<QuestionAnswerModel> questions,
            List<FormUploadData> assets,
            List<FormUploadData> document,
            List<SurveyClientModel> client,
            List<ZipcodeData> zipcode,
            List<SurveyDataModel> data)
        checkClientSuccess,
    required TResult Function(SearchModel item, String choice)
        selectChoiceSuccess,
    required TResult Function(SurveyDataModel data) selectFileSuccess,
    required TResult Function(SurveyTask task) submitSuccess,
    required TResult Function(GenericFailure failure) submitFailed,
    required TResult Function(bool clientCompleted, bool questionCompleted,
            bool assetsCompleted, bool documentsCompleted)
        checkCompletedData,
    required TResult Function(String reason) isMandatory,
  }) {
    return submitFailed(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<QuestionAnswerModel> questions,
            List<FormUploadData> assets,
            List<FormUploadData> document,
            List<SurveyClientModel> client,
            List<ZipcodeData> zipcode,
            List<SurveyDataModel> data)?
        checkClientSuccess,
    TResult Function(SearchModel item, String choice)? selectChoiceSuccess,
    TResult Function(SurveyDataModel data)? selectFileSuccess,
    TResult Function(SurveyTask task)? submitSuccess,
    TResult Function(GenericFailure failure)? submitFailed,
    TResult Function(bool clientCompleted, bool questionCompleted,
            bool assetsCompleted, bool documentsCompleted)?
        checkCompletedData,
    TResult Function(String reason)? isMandatory,
  }) {
    return submitFailed?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<QuestionAnswerModel> questions,
            List<FormUploadData> assets,
            List<FormUploadData> document,
            List<SurveyClientModel> client,
            List<ZipcodeData> zipcode,
            List<SurveyDataModel> data)?
        checkClientSuccess,
    TResult Function(SearchModel item, String choice)? selectChoiceSuccess,
    TResult Function(SurveyDataModel data)? selectFileSuccess,
    TResult Function(SurveyTask task)? submitSuccess,
    TResult Function(GenericFailure failure)? submitFailed,
    TResult Function(bool clientCompleted, bool questionCompleted,
            bool assetsCompleted, bool documentsCompleted)?
        checkCompletedData,
    TResult Function(String reason)? isMandatory,
    required TResult orElse(),
  }) {
    if (submitFailed != null) {
      return submitFailed(failure);
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
    required TResult Function(_SelectFileSuccess value) selectFileSuccess,
    required TResult Function(_SubmitSuccess value) submitSuccess,
    required TResult Function(_SubmitFailed value) submitFailed,
    required TResult Function(_CheckCompletedData value) checkCompletedData,
    required TResult Function(_IsMandatory value) isMandatory,
  }) {
    return submitFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CheckClientSuccess value)? checkClientSuccess,
    TResult Function(_SelectChoiceSuccess value)? selectChoiceSuccess,
    TResult Function(_SelectFileSuccess value)? selectFileSuccess,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailed value)? submitFailed,
    TResult Function(_CheckCompletedData value)? checkCompletedData,
    TResult Function(_IsMandatory value)? isMandatory,
  }) {
    return submitFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CheckClientSuccess value)? checkClientSuccess,
    TResult Function(_SelectChoiceSuccess value)? selectChoiceSuccess,
    TResult Function(_SelectFileSuccess value)? selectFileSuccess,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailed value)? submitFailed,
    TResult Function(_CheckCompletedData value)? checkCompletedData,
    TResult Function(_IsMandatory value)? isMandatory,
    required TResult orElse(),
  }) {
    if (submitFailed != null) {
      return submitFailed(this);
    }
    return orElse();
  }
}

abstract class _SubmitFailed implements SurveyTaskState {
  const factory _SubmitFailed({required GenericFailure failure}) =
      _$_SubmitFailed;

  GenericFailure get failure;
  @JsonKey(ignore: true)
  _$SubmitFailedCopyWith<_SubmitFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CheckCompletedDataCopyWith<$Res> {
  factory _$CheckCompletedDataCopyWith(
          _CheckCompletedData value, $Res Function(_CheckCompletedData) then) =
      __$CheckCompletedDataCopyWithImpl<$Res>;
  $Res call(
      {bool clientCompleted,
      bool questionCompleted,
      bool assetsCompleted,
      bool documentsCompleted});
}

/// @nodoc
class __$CheckCompletedDataCopyWithImpl<$Res>
    extends _$SurveyTaskStateCopyWithImpl<$Res>
    implements _$CheckCompletedDataCopyWith<$Res> {
  __$CheckCompletedDataCopyWithImpl(
      _CheckCompletedData _value, $Res Function(_CheckCompletedData) _then)
      : super(_value, (v) => _then(v as _CheckCompletedData));

  @override
  _CheckCompletedData get _value => super._value as _CheckCompletedData;

  @override
  $Res call({
    Object? clientCompleted = freezed,
    Object? questionCompleted = freezed,
    Object? assetsCompleted = freezed,
    Object? documentsCompleted = freezed,
  }) {
    return _then(_CheckCompletedData(
      clientCompleted: clientCompleted == freezed
          ? _value.clientCompleted
          : clientCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      questionCompleted: questionCompleted == freezed
          ? _value.questionCompleted
          : questionCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      assetsCompleted: assetsCompleted == freezed
          ? _value.assetsCompleted
          : assetsCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      documentsCompleted: documentsCompleted == freezed
          ? _value.documentsCompleted
          : documentsCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CheckCompletedData implements _CheckCompletedData {
  const _$_CheckCompletedData(
      {required this.clientCompleted,
      required this.questionCompleted,
      required this.assetsCompleted,
      required this.documentsCompleted});

  @override
  final bool clientCompleted;
  @override
  final bool questionCompleted;
  @override
  final bool assetsCompleted;
  @override
  final bool documentsCompleted;

  @override
  String toString() {
    return 'SurveyTaskState.checkCompletedData(clientCompleted: $clientCompleted, questionCompleted: $questionCompleted, assetsCompleted: $assetsCompleted, documentsCompleted: $documentsCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CheckCompletedData &&
            const DeepCollectionEquality()
                .equals(other.clientCompleted, clientCompleted) &&
            const DeepCollectionEquality()
                .equals(other.questionCompleted, questionCompleted) &&
            const DeepCollectionEquality()
                .equals(other.assetsCompleted, assetsCompleted) &&
            const DeepCollectionEquality()
                .equals(other.documentsCompleted, documentsCompleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(clientCompleted),
      const DeepCollectionEquality().hash(questionCompleted),
      const DeepCollectionEquality().hash(assetsCompleted),
      const DeepCollectionEquality().hash(documentsCompleted));

  @JsonKey(ignore: true)
  @override
  _$CheckCompletedDataCopyWith<_CheckCompletedData> get copyWith =>
      __$CheckCompletedDataCopyWithImpl<_CheckCompletedData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<QuestionAnswerModel> questions,
            List<FormUploadData> assets,
            List<FormUploadData> document,
            List<SurveyClientModel> client,
            List<ZipcodeData> zipcode,
            List<SurveyDataModel> data)
        checkClientSuccess,
    required TResult Function(SearchModel item, String choice)
        selectChoiceSuccess,
    required TResult Function(SurveyDataModel data) selectFileSuccess,
    required TResult Function(SurveyTask task) submitSuccess,
    required TResult Function(GenericFailure failure) submitFailed,
    required TResult Function(bool clientCompleted, bool questionCompleted,
            bool assetsCompleted, bool documentsCompleted)
        checkCompletedData,
    required TResult Function(String reason) isMandatory,
  }) {
    return checkCompletedData(clientCompleted, questionCompleted,
        assetsCompleted, documentsCompleted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<QuestionAnswerModel> questions,
            List<FormUploadData> assets,
            List<FormUploadData> document,
            List<SurveyClientModel> client,
            List<ZipcodeData> zipcode,
            List<SurveyDataModel> data)?
        checkClientSuccess,
    TResult Function(SearchModel item, String choice)? selectChoiceSuccess,
    TResult Function(SurveyDataModel data)? selectFileSuccess,
    TResult Function(SurveyTask task)? submitSuccess,
    TResult Function(GenericFailure failure)? submitFailed,
    TResult Function(bool clientCompleted, bool questionCompleted,
            bool assetsCompleted, bool documentsCompleted)?
        checkCompletedData,
    TResult Function(String reason)? isMandatory,
  }) {
    return checkCompletedData?.call(clientCompleted, questionCompleted,
        assetsCompleted, documentsCompleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<QuestionAnswerModel> questions,
            List<FormUploadData> assets,
            List<FormUploadData> document,
            List<SurveyClientModel> client,
            List<ZipcodeData> zipcode,
            List<SurveyDataModel> data)?
        checkClientSuccess,
    TResult Function(SearchModel item, String choice)? selectChoiceSuccess,
    TResult Function(SurveyDataModel data)? selectFileSuccess,
    TResult Function(SurveyTask task)? submitSuccess,
    TResult Function(GenericFailure failure)? submitFailed,
    TResult Function(bool clientCompleted, bool questionCompleted,
            bool assetsCompleted, bool documentsCompleted)?
        checkCompletedData,
    TResult Function(String reason)? isMandatory,
    required TResult orElse(),
  }) {
    if (checkCompletedData != null) {
      return checkCompletedData(clientCompleted, questionCompleted,
          assetsCompleted, documentsCompleted);
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
    required TResult Function(_SelectFileSuccess value) selectFileSuccess,
    required TResult Function(_SubmitSuccess value) submitSuccess,
    required TResult Function(_SubmitFailed value) submitFailed,
    required TResult Function(_CheckCompletedData value) checkCompletedData,
    required TResult Function(_IsMandatory value) isMandatory,
  }) {
    return checkCompletedData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CheckClientSuccess value)? checkClientSuccess,
    TResult Function(_SelectChoiceSuccess value)? selectChoiceSuccess,
    TResult Function(_SelectFileSuccess value)? selectFileSuccess,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailed value)? submitFailed,
    TResult Function(_CheckCompletedData value)? checkCompletedData,
    TResult Function(_IsMandatory value)? isMandatory,
  }) {
    return checkCompletedData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CheckClientSuccess value)? checkClientSuccess,
    TResult Function(_SelectChoiceSuccess value)? selectChoiceSuccess,
    TResult Function(_SelectFileSuccess value)? selectFileSuccess,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailed value)? submitFailed,
    TResult Function(_CheckCompletedData value)? checkCompletedData,
    TResult Function(_IsMandatory value)? isMandatory,
    required TResult orElse(),
  }) {
    if (checkCompletedData != null) {
      return checkCompletedData(this);
    }
    return orElse();
  }
}

abstract class _CheckCompletedData implements SurveyTaskState {
  const factory _CheckCompletedData(
      {required bool clientCompleted,
      required bool questionCompleted,
      required bool assetsCompleted,
      required bool documentsCompleted}) = _$_CheckCompletedData;

  bool get clientCompleted;
  bool get questionCompleted;
  bool get assetsCompleted;
  bool get documentsCompleted;
  @JsonKey(ignore: true)
  _$CheckCompletedDataCopyWith<_CheckCompletedData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$IsMandatoryCopyWith<$Res> {
  factory _$IsMandatoryCopyWith(
          _IsMandatory value, $Res Function(_IsMandatory) then) =
      __$IsMandatoryCopyWithImpl<$Res>;
  $Res call({String reason});
}

/// @nodoc
class __$IsMandatoryCopyWithImpl<$Res>
    extends _$SurveyTaskStateCopyWithImpl<$Res>
    implements _$IsMandatoryCopyWith<$Res> {
  __$IsMandatoryCopyWithImpl(
      _IsMandatory _value, $Res Function(_IsMandatory) _then)
      : super(_value, (v) => _then(v as _IsMandatory));

  @override
  _IsMandatory get _value => super._value as _IsMandatory;

  @override
  $Res call({
    Object? reason = freezed,
  }) {
    return _then(_IsMandatory(
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_IsMandatory implements _IsMandatory {
  const _$_IsMandatory({required this.reason});

  @override
  final String reason;

  @override
  String toString() {
    return 'SurveyTaskState.isMandatory(reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IsMandatory &&
            const DeepCollectionEquality().equals(other.reason, reason));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(reason));

  @JsonKey(ignore: true)
  @override
  _$IsMandatoryCopyWith<_IsMandatory> get copyWith =>
      __$IsMandatoryCopyWithImpl<_IsMandatory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<QuestionAnswerModel> questions,
            List<FormUploadData> assets,
            List<FormUploadData> document,
            List<SurveyClientModel> client,
            List<ZipcodeData> zipcode,
            List<SurveyDataModel> data)
        checkClientSuccess,
    required TResult Function(SearchModel item, String choice)
        selectChoiceSuccess,
    required TResult Function(SurveyDataModel data) selectFileSuccess,
    required TResult Function(SurveyTask task) submitSuccess,
    required TResult Function(GenericFailure failure) submitFailed,
    required TResult Function(bool clientCompleted, bool questionCompleted,
            bool assetsCompleted, bool documentsCompleted)
        checkCompletedData,
    required TResult Function(String reason) isMandatory,
  }) {
    return isMandatory(reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<QuestionAnswerModel> questions,
            List<FormUploadData> assets,
            List<FormUploadData> document,
            List<SurveyClientModel> client,
            List<ZipcodeData> zipcode,
            List<SurveyDataModel> data)?
        checkClientSuccess,
    TResult Function(SearchModel item, String choice)? selectChoiceSuccess,
    TResult Function(SurveyDataModel data)? selectFileSuccess,
    TResult Function(SurveyTask task)? submitSuccess,
    TResult Function(GenericFailure failure)? submitFailed,
    TResult Function(bool clientCompleted, bool questionCompleted,
            bool assetsCompleted, bool documentsCompleted)?
        checkCompletedData,
    TResult Function(String reason)? isMandatory,
  }) {
    return isMandatory?.call(reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<QuestionAnswerModel> questions,
            List<FormUploadData> assets,
            List<FormUploadData> document,
            List<SurveyClientModel> client,
            List<ZipcodeData> zipcode,
            List<SurveyDataModel> data)?
        checkClientSuccess,
    TResult Function(SearchModel item, String choice)? selectChoiceSuccess,
    TResult Function(SurveyDataModel data)? selectFileSuccess,
    TResult Function(SurveyTask task)? submitSuccess,
    TResult Function(GenericFailure failure)? submitFailed,
    TResult Function(bool clientCompleted, bool questionCompleted,
            bool assetsCompleted, bool documentsCompleted)?
        checkCompletedData,
    TResult Function(String reason)? isMandatory,
    required TResult orElse(),
  }) {
    if (isMandatory != null) {
      return isMandatory(reason);
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
    required TResult Function(_SelectFileSuccess value) selectFileSuccess,
    required TResult Function(_SubmitSuccess value) submitSuccess,
    required TResult Function(_SubmitFailed value) submitFailed,
    required TResult Function(_CheckCompletedData value) checkCompletedData,
    required TResult Function(_IsMandatory value) isMandatory,
  }) {
    return isMandatory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CheckClientSuccess value)? checkClientSuccess,
    TResult Function(_SelectChoiceSuccess value)? selectChoiceSuccess,
    TResult Function(_SelectFileSuccess value)? selectFileSuccess,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailed value)? submitFailed,
    TResult Function(_CheckCompletedData value)? checkCompletedData,
    TResult Function(_IsMandatory value)? isMandatory,
  }) {
    return isMandatory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CheckClientSuccess value)? checkClientSuccess,
    TResult Function(_SelectChoiceSuccess value)? selectChoiceSuccess,
    TResult Function(_SelectFileSuccess value)? selectFileSuccess,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailed value)? submitFailed,
    TResult Function(_CheckCompletedData value)? checkCompletedData,
    TResult Function(_IsMandatory value)? isMandatory,
    required TResult orElse(),
  }) {
    if (isMandatory != null) {
      return isMandatory(this);
    }
    return orElse();
  }
}

abstract class _IsMandatory implements SurveyTaskState {
  const factory _IsMandatory({required String reason}) = _$_IsMandatory;

  String get reason;
  @JsonKey(ignore: true)
  _$IsMandatoryCopyWith<_IsMandatory> get copyWith =>
      throw _privateConstructorUsedError;
}
