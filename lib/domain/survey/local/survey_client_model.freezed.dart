// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'survey_client_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SurveyClientModelTearOff {
  const _$SurveyClientModelTearOff();

  _SurveyClientModel call(
      {required String? id,
      required String? title,
      required int? limit,
      required ClientFormType? clientFormType,
      required int? size,
      required bool? mandatory,
      TextEditingController? controller}) {
    return _SurveyClientModel(
      id: id,
      title: title,
      limit: limit,
      clientFormType: clientFormType,
      size: size,
      mandatory: mandatory,
      controller: controller,
    );
  }
}

/// @nodoc
const $SurveyClientModel = _$SurveyClientModelTearOff();

/// @nodoc
mixin _$SurveyClientModel {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  ClientFormType? get clientFormType => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  bool? get mandatory => throw _privateConstructorUsedError;
  TextEditingController? get controller => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SurveyClientModelCopyWith<SurveyClientModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyClientModelCopyWith<$Res> {
  factory $SurveyClientModelCopyWith(
          SurveyClientModel value, $Res Function(SurveyClientModel) then) =
      _$SurveyClientModelCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? title,
      int? limit,
      ClientFormType? clientFormType,
      int? size,
      bool? mandatory,
      TextEditingController? controller});
}

/// @nodoc
class _$SurveyClientModelCopyWithImpl<$Res>
    implements $SurveyClientModelCopyWith<$Res> {
  _$SurveyClientModelCopyWithImpl(this._value, this._then);

  final SurveyClientModel _value;
  // ignore: unused_field
  final $Res Function(SurveyClientModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? limit = freezed,
    Object? clientFormType = freezed,
    Object? size = freezed,
    Object? mandatory = freezed,
    Object? controller = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      clientFormType: clientFormType == freezed
          ? _value.clientFormType
          : clientFormType // ignore: cast_nullable_to_non_nullable
              as ClientFormType?,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      mandatory: mandatory == freezed
          ? _value.mandatory
          : mandatory // ignore: cast_nullable_to_non_nullable
              as bool?,
      controller: controller == freezed
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
    ));
  }
}

/// @nodoc
abstract class _$SurveyClientModelCopyWith<$Res>
    implements $SurveyClientModelCopyWith<$Res> {
  factory _$SurveyClientModelCopyWith(
          _SurveyClientModel value, $Res Function(_SurveyClientModel) then) =
      __$SurveyClientModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? title,
      int? limit,
      ClientFormType? clientFormType,
      int? size,
      bool? mandatory,
      TextEditingController? controller});
}

/// @nodoc
class __$SurveyClientModelCopyWithImpl<$Res>
    extends _$SurveyClientModelCopyWithImpl<$Res>
    implements _$SurveyClientModelCopyWith<$Res> {
  __$SurveyClientModelCopyWithImpl(
      _SurveyClientModel _value, $Res Function(_SurveyClientModel) _then)
      : super(_value, (v) => _then(v as _SurveyClientModel));

  @override
  _SurveyClientModel get _value => super._value as _SurveyClientModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? limit = freezed,
    Object? clientFormType = freezed,
    Object? size = freezed,
    Object? mandatory = freezed,
    Object? controller = freezed,
  }) {
    return _then(_SurveyClientModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      clientFormType: clientFormType == freezed
          ? _value.clientFormType
          : clientFormType // ignore: cast_nullable_to_non_nullable
              as ClientFormType?,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      mandatory: mandatory == freezed
          ? _value.mandatory
          : mandatory // ignore: cast_nullable_to_non_nullable
              as bool?,
      controller: controller == freezed
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
    ));
  }
}

/// @nodoc

class _$_SurveyClientModel implements _SurveyClientModel {
  const _$_SurveyClientModel(
      {required this.id,
      required this.title,
      required this.limit,
      required this.clientFormType,
      required this.size,
      required this.mandatory,
      this.controller});

  @override
  final String? id;
  @override
  final String? title;
  @override
  final int? limit;
  @override
  final ClientFormType? clientFormType;
  @override
  final int? size;
  @override
  final bool? mandatory;
  @override
  final TextEditingController? controller;

  @override
  String toString() {
    return 'SurveyClientModel(id: $id, title: $title, limit: $limit, clientFormType: $clientFormType, size: $size, mandatory: $mandatory, controller: $controller)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SurveyClientModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.limit, limit) &&
            const DeepCollectionEquality()
                .equals(other.clientFormType, clientFormType) &&
            const DeepCollectionEquality().equals(other.size, size) &&
            const DeepCollectionEquality().equals(other.mandatory, mandatory) &&
            const DeepCollectionEquality()
                .equals(other.controller, controller));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(limit),
      const DeepCollectionEquality().hash(clientFormType),
      const DeepCollectionEquality().hash(size),
      const DeepCollectionEquality().hash(mandatory),
      const DeepCollectionEquality().hash(controller));

  @JsonKey(ignore: true)
  @override
  _$SurveyClientModelCopyWith<_SurveyClientModel> get copyWith =>
      __$SurveyClientModelCopyWithImpl<_SurveyClientModel>(this, _$identity);
}

abstract class _SurveyClientModel implements SurveyClientModel {
  const factory _SurveyClientModel(
      {required String? id,
      required String? title,
      required int? limit,
      required ClientFormType? clientFormType,
      required int? size,
      required bool? mandatory,
      TextEditingController? controller}) = _$_SurveyClientModel;

  @override
  String? get id;
  @override
  String? get title;
  @override
  int? get limit;
  @override
  ClientFormType? get clientFormType;
  @override
  int? get size;
  @override
  bool? get mandatory;
  @override
  TextEditingController? get controller;
  @override
  @JsonKey(ignore: true)
  _$SurveyClientModelCopyWith<_SurveyClientModel> get copyWith =>
      throw _privateConstructorUsedError;
}
