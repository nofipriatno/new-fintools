// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'survey_question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QuestionAnswerModelTearOff {
  const _$QuestionAnswerModelTearOff();

  _QuestionAnswerModel call(
      {required String? id,
      required String? question,
      required SearchModel? search,
      required TextEditingController? controller}) {
    return _QuestionAnswerModel(
      id: id,
      question: question,
      search: search,
      controller: controller,
    );
  }
}

/// @nodoc
const $QuestionAnswerModel = _$QuestionAnswerModelTearOff();

/// @nodoc
mixin _$QuestionAnswerModel {
  String? get id => throw _privateConstructorUsedError;
  String? get question => throw _privateConstructorUsedError;
  SearchModel? get search => throw _privateConstructorUsedError;
  TextEditingController? get controller => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionAnswerModelCopyWith<QuestionAnswerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionAnswerModelCopyWith<$Res> {
  factory $QuestionAnswerModelCopyWith(
          QuestionAnswerModel value, $Res Function(QuestionAnswerModel) then) =
      _$QuestionAnswerModelCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? question,
      SearchModel? search,
      TextEditingController? controller});

  $SearchModelCopyWith<$Res>? get search;
}

/// @nodoc
class _$QuestionAnswerModelCopyWithImpl<$Res>
    implements $QuestionAnswerModelCopyWith<$Res> {
  _$QuestionAnswerModelCopyWithImpl(this._value, this._then);

  final QuestionAnswerModel _value;
  // ignore: unused_field
  final $Res Function(QuestionAnswerModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? question = freezed,
    Object? search = freezed,
    Object? controller = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      search: search == freezed
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as SearchModel?,
      controller: controller == freezed
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
    ));
  }

  @override
  $SearchModelCopyWith<$Res>? get search {
    if (_value.search == null) {
      return null;
    }

    return $SearchModelCopyWith<$Res>(_value.search!, (value) {
      return _then(_value.copyWith(search: value));
    });
  }
}

/// @nodoc
abstract class _$QuestionAnswerModelCopyWith<$Res>
    implements $QuestionAnswerModelCopyWith<$Res> {
  factory _$QuestionAnswerModelCopyWith(_QuestionAnswerModel value,
          $Res Function(_QuestionAnswerModel) then) =
      __$QuestionAnswerModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? question,
      SearchModel? search,
      TextEditingController? controller});

  @override
  $SearchModelCopyWith<$Res>? get search;
}

/// @nodoc
class __$QuestionAnswerModelCopyWithImpl<$Res>
    extends _$QuestionAnswerModelCopyWithImpl<$Res>
    implements _$QuestionAnswerModelCopyWith<$Res> {
  __$QuestionAnswerModelCopyWithImpl(
      _QuestionAnswerModel _value, $Res Function(_QuestionAnswerModel) _then)
      : super(_value, (v) => _then(v as _QuestionAnswerModel));

  @override
  _QuestionAnswerModel get _value => super._value as _QuestionAnswerModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? question = freezed,
    Object? search = freezed,
    Object? controller = freezed,
  }) {
    return _then(_QuestionAnswerModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      search: search == freezed
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as SearchModel?,
      controller: controller == freezed
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
    ));
  }
}

/// @nodoc

class _$_QuestionAnswerModel implements _QuestionAnswerModel {
  const _$_QuestionAnswerModel(
      {required this.id,
      required this.question,
      required this.search,
      required this.controller});

  @override
  final String? id;
  @override
  final String? question;
  @override
  final SearchModel? search;
  @override
  final TextEditingController? controller;

  @override
  String toString() {
    return 'QuestionAnswerModel(id: $id, question: $question, search: $search, controller: $controller)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuestionAnswerModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.question, question) &&
            const DeepCollectionEquality().equals(other.search, search) &&
            const DeepCollectionEquality()
                .equals(other.controller, controller));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(question),
      const DeepCollectionEquality().hash(search),
      const DeepCollectionEquality().hash(controller));

  @JsonKey(ignore: true)
  @override
  _$QuestionAnswerModelCopyWith<_QuestionAnswerModel> get copyWith =>
      __$QuestionAnswerModelCopyWithImpl<_QuestionAnswerModel>(
          this, _$identity);
}

abstract class _QuestionAnswerModel implements QuestionAnswerModel {
  const factory _QuestionAnswerModel(
      {required String? id,
      required String? question,
      required SearchModel? search,
      required TextEditingController? controller}) = _$_QuestionAnswerModel;

  @override
  String? get id;
  @override
  String? get question;
  @override
  SearchModel? get search;
  @override
  TextEditingController? get controller;
  @override
  @JsonKey(ignore: true)
  _$QuestionAnswerModelCopyWith<_QuestionAnswerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
