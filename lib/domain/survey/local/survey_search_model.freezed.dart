// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'survey_search_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchModelTearOff {
  const _$SearchModelTearOff();

  _SearchModel call(
      {required String? title,
      required List<String>? items,
      required String? value}) {
    return _SearchModel(
      title: title,
      items: items,
      value: value,
    );
  }
}

/// @nodoc
const $SearchModel = _$SearchModelTearOff();

/// @nodoc
mixin _$SearchModel {
  String? get title => throw _privateConstructorUsedError;
  List<String>? get items => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchModelCopyWith<SearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchModelCopyWith<$Res> {
  factory $SearchModelCopyWith(
          SearchModel value, $Res Function(SearchModel) then) =
      _$SearchModelCopyWithImpl<$Res>;
  $Res call({String? title, List<String>? items, String? value});
}

/// @nodoc
class _$SearchModelCopyWithImpl<$Res> implements $SearchModelCopyWith<$Res> {
  _$SearchModelCopyWithImpl(this._value, this._then);

  final SearchModel _value;
  // ignore: unused_field
  final $Res Function(SearchModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? items = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SearchModelCopyWith<$Res>
    implements $SearchModelCopyWith<$Res> {
  factory _$SearchModelCopyWith(
          _SearchModel value, $Res Function(_SearchModel) then) =
      __$SearchModelCopyWithImpl<$Res>;
  @override
  $Res call({String? title, List<String>? items, String? value});
}

/// @nodoc
class __$SearchModelCopyWithImpl<$Res> extends _$SearchModelCopyWithImpl<$Res>
    implements _$SearchModelCopyWith<$Res> {
  __$SearchModelCopyWithImpl(
      _SearchModel _value, $Res Function(_SearchModel) _then)
      : super(_value, (v) => _then(v as _SearchModel));

  @override
  _SearchModel get _value => super._value as _SearchModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? items = freezed,
    Object? value = freezed,
  }) {
    return _then(_SearchModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SearchModel implements _SearchModel {
  const _$_SearchModel(
      {required this.title, required this.items, required this.value});

  @override
  final String? title;
  @override
  final List<String>? items;
  @override
  final String? value;

  @override
  String toString() {
    return 'SearchModel(title: $title, items: $items, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchModel &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.items, items) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(items),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$SearchModelCopyWith<_SearchModel> get copyWith =>
      __$SearchModelCopyWithImpl<_SearchModel>(this, _$identity);
}

abstract class _SearchModel implements SearchModel {
  const factory _SearchModel(
      {required String? title,
      required List<String>? items,
      required String? value}) = _$_SearchModel;

  @override
  String? get title;
  @override
  List<String>? get items;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$SearchModelCopyWith<_SearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}
