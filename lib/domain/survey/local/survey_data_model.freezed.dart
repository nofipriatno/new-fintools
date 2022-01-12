// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'survey_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SurveyDataModel _$SurveyDataModelFromJson(Map<String, dynamic> json) {
  return _SurveyDataModel.fromJson(json);
}

/// @nodoc
class _$SurveyDataModelTearOff {
  const _$SurveyDataModelTearOff();

  _SurveyDataModel call(
      {required String? id,
      required String? filePath,
      required DateTime? dateTime,
      required String? extension}) {
    return _SurveyDataModel(
      id: id,
      filePath: filePath,
      dateTime: dateTime,
      extension: extension,
    );
  }

  SurveyDataModel fromJson(Map<String, Object?> json) {
    return SurveyDataModel.fromJson(json);
  }
}

/// @nodoc
const $SurveyDataModel = _$SurveyDataModelTearOff();

/// @nodoc
mixin _$SurveyDataModel {
  String? get id => throw _privateConstructorUsedError;
  String? get filePath => throw _privateConstructorUsedError;
  DateTime? get dateTime => throw _privateConstructorUsedError;
  String? get extension => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurveyDataModelCopyWith<SurveyDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyDataModelCopyWith<$Res> {
  factory $SurveyDataModelCopyWith(
          SurveyDataModel value, $Res Function(SurveyDataModel) then) =
      _$SurveyDataModelCopyWithImpl<$Res>;
  $Res call(
      {String? id, String? filePath, DateTime? dateTime, String? extension});
}

/// @nodoc
class _$SurveyDataModelCopyWithImpl<$Res>
    implements $SurveyDataModelCopyWith<$Res> {
  _$SurveyDataModelCopyWithImpl(this._value, this._then);

  final SurveyDataModel _value;
  // ignore: unused_field
  final $Res Function(SurveyDataModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? filePath = freezed,
    Object? dateTime = freezed,
    Object? extension = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      extension: extension == freezed
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SurveyDataModelCopyWith<$Res>
    implements $SurveyDataModelCopyWith<$Res> {
  factory _$SurveyDataModelCopyWith(
          _SurveyDataModel value, $Res Function(_SurveyDataModel) then) =
      __$SurveyDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id, String? filePath, DateTime? dateTime, String? extension});
}

/// @nodoc
class __$SurveyDataModelCopyWithImpl<$Res>
    extends _$SurveyDataModelCopyWithImpl<$Res>
    implements _$SurveyDataModelCopyWith<$Res> {
  __$SurveyDataModelCopyWithImpl(
      _SurveyDataModel _value, $Res Function(_SurveyDataModel) _then)
      : super(_value, (v) => _then(v as _SurveyDataModel));

  @override
  _SurveyDataModel get _value => super._value as _SurveyDataModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? filePath = freezed,
    Object? dateTime = freezed,
    Object? extension = freezed,
  }) {
    return _then(_SurveyDataModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      extension: extension == freezed
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SurveyDataModel implements _SurveyDataModel {
  const _$_SurveyDataModel(
      {required this.id,
      required this.filePath,
      required this.dateTime,
      required this.extension});

  factory _$_SurveyDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_SurveyDataModelFromJson(json);

  @override
  final String? id;
  @override
  final String? filePath;
  @override
  final DateTime? dateTime;
  @override
  final String? extension;

  @override
  String toString() {
    return 'SurveyDataModel(id: $id, filePath: $filePath, dateTime: $dateTime, extension: $extension)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SurveyDataModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.filePath, filePath) &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime) &&
            const DeepCollectionEquality().equals(other.extension, extension));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(filePath),
      const DeepCollectionEquality().hash(dateTime),
      const DeepCollectionEquality().hash(extension));

  @JsonKey(ignore: true)
  @override
  _$SurveyDataModelCopyWith<_SurveyDataModel> get copyWith =>
      __$SurveyDataModelCopyWithImpl<_SurveyDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SurveyDataModelToJson(this);
  }
}

abstract class _SurveyDataModel implements SurveyDataModel {
  const factory _SurveyDataModel(
      {required String? id,
      required String? filePath,
      required DateTime? dateTime,
      required String? extension}) = _$_SurveyDataModel;

  factory _SurveyDataModel.fromJson(Map<String, dynamic> json) =
      _$_SurveyDataModel.fromJson;

  @override
  String? get id;
  @override
  String? get filePath;
  @override
  DateTime? get dateTime;
  @override
  String? get extension;
  @override
  @JsonKey(ignore: true)
  _$SurveyDataModelCopyWith<_SurveyDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
