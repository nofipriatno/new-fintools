// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'survey_zipcode_master_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SurveyZipcodeMasterResponse _$SurveyZipcodeMasterResponseFromJson(
    Map<String, dynamic> json) {
  return _SurveyZipcodeMasterResponse.fromJson(json);
}

/// @nodoc
class _$SurveyZipcodeMasterResponseTearOff {
  const _$SurveyZipcodeMasterResponseTearOff();

  _SurveyZipcodeMasterResponse call(
      {required int status,
      required String message,
      required List<SurveyZipcodeItem> data}) {
    return _SurveyZipcodeMasterResponse(
      status: status,
      message: message,
      data: data,
    );
  }

  SurveyZipcodeMasterResponse fromJson(Map<String, Object?> json) {
    return SurveyZipcodeMasterResponse.fromJson(json);
  }
}

/// @nodoc
const $SurveyZipcodeMasterResponse = _$SurveyZipcodeMasterResponseTearOff();

/// @nodoc
mixin _$SurveyZipcodeMasterResponse {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<SurveyZipcodeItem> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurveyZipcodeMasterResponseCopyWith<SurveyZipcodeMasterResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyZipcodeMasterResponseCopyWith<$Res> {
  factory $SurveyZipcodeMasterResponseCopyWith(
          SurveyZipcodeMasterResponse value,
          $Res Function(SurveyZipcodeMasterResponse) then) =
      _$SurveyZipcodeMasterResponseCopyWithImpl<$Res>;
  $Res call({int status, String message, List<SurveyZipcodeItem> data});
}

/// @nodoc
class _$SurveyZipcodeMasterResponseCopyWithImpl<$Res>
    implements $SurveyZipcodeMasterResponseCopyWith<$Res> {
  _$SurveyZipcodeMasterResponseCopyWithImpl(this._value, this._then);

  final SurveyZipcodeMasterResponse _value;
  // ignore: unused_field
  final $Res Function(SurveyZipcodeMasterResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SurveyZipcodeItem>,
    ));
  }
}

/// @nodoc
abstract class _$SurveyZipcodeMasterResponseCopyWith<$Res>
    implements $SurveyZipcodeMasterResponseCopyWith<$Res> {
  factory _$SurveyZipcodeMasterResponseCopyWith(
          _SurveyZipcodeMasterResponse value,
          $Res Function(_SurveyZipcodeMasterResponse) then) =
      __$SurveyZipcodeMasterResponseCopyWithImpl<$Res>;
  @override
  $Res call({int status, String message, List<SurveyZipcodeItem> data});
}

/// @nodoc
class __$SurveyZipcodeMasterResponseCopyWithImpl<$Res>
    extends _$SurveyZipcodeMasterResponseCopyWithImpl<$Res>
    implements _$SurveyZipcodeMasterResponseCopyWith<$Res> {
  __$SurveyZipcodeMasterResponseCopyWithImpl(
      _SurveyZipcodeMasterResponse _value,
      $Res Function(_SurveyZipcodeMasterResponse) _then)
      : super(_value, (v) => _then(v as _SurveyZipcodeMasterResponse));

  @override
  _SurveyZipcodeMasterResponse get _value =>
      super._value as _SurveyZipcodeMasterResponse;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_SurveyZipcodeMasterResponse(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SurveyZipcodeItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SurveyZipcodeMasterResponse implements _SurveyZipcodeMasterResponse {
  const _$_SurveyZipcodeMasterResponse(
      {required this.status, required this.message, required this.data});

  factory _$_SurveyZipcodeMasterResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SurveyZipcodeMasterResponseFromJson(json);

  @override
  final int status;
  @override
  final String message;
  @override
  final List<SurveyZipcodeItem> data;

  @override
  String toString() {
    return 'SurveyZipcodeMasterResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SurveyZipcodeMasterResponse &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$SurveyZipcodeMasterResponseCopyWith<_SurveyZipcodeMasterResponse>
      get copyWith => __$SurveyZipcodeMasterResponseCopyWithImpl<
          _SurveyZipcodeMasterResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SurveyZipcodeMasterResponseToJson(this);
  }
}

abstract class _SurveyZipcodeMasterResponse
    implements SurveyZipcodeMasterResponse {
  const factory _SurveyZipcodeMasterResponse(
      {required int status,
      required String message,
      required List<SurveyZipcodeItem> data}) = _$_SurveyZipcodeMasterResponse;

  factory _SurveyZipcodeMasterResponse.fromJson(Map<String, dynamic> json) =
      _$_SurveyZipcodeMasterResponse.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  List<SurveyZipcodeItem> get data;
  @override
  @JsonKey(ignore: true)
  _$SurveyZipcodeMasterResponseCopyWith<_SurveyZipcodeMasterResponse>
      get copyWith => throw _privateConstructorUsedError;
}

SurveyZipcodeItem _$SurveyZipcodeItemFromJson(Map<String, dynamic> json) {
  return _SurveyZipcodeItem.fromJson(json);
}

/// @nodoc
class _$SurveyZipcodeItemTearOff {
  const _$SurveyZipcodeItemTearOff();

  _SurveyZipcodeItem call(
      {@JsonKey(name: 'sysZipid') required int id,
      @JsonKey(name: 'kota') required String city,
      @JsonKey(name: 'kecamatan') required String subDistrict,
      @JsonKey(name: 'kelurahan') required String district,
      @JsonKey(name: 'kodepos') required String postCode,
      @JsonKey(name: 'areatagih') required String billArea}) {
    return _SurveyZipcodeItem(
      id: id,
      city: city,
      subDistrict: subDistrict,
      district: district,
      postCode: postCode,
      billArea: billArea,
    );
  }

  SurveyZipcodeItem fromJson(Map<String, Object?> json) {
    return SurveyZipcodeItem.fromJson(json);
  }
}

/// @nodoc
const $SurveyZipcodeItem = _$SurveyZipcodeItemTearOff();

/// @nodoc
mixin _$SurveyZipcodeItem {
  @JsonKey(name: 'sysZipid')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'kota')
  String get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'kecamatan')
  String get subDistrict => throw _privateConstructorUsedError;
  @JsonKey(name: 'kelurahan')
  String get district => throw _privateConstructorUsedError;
  @JsonKey(name: 'kodepos')
  String get postCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'areatagih')
  String get billArea => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurveyZipcodeItemCopyWith<SurveyZipcodeItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyZipcodeItemCopyWith<$Res> {
  factory $SurveyZipcodeItemCopyWith(
          SurveyZipcodeItem value, $Res Function(SurveyZipcodeItem) then) =
      _$SurveyZipcodeItemCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'sysZipid') int id,
      @JsonKey(name: 'kota') String city,
      @JsonKey(name: 'kecamatan') String subDistrict,
      @JsonKey(name: 'kelurahan') String district,
      @JsonKey(name: 'kodepos') String postCode,
      @JsonKey(name: 'areatagih') String billArea});
}

/// @nodoc
class _$SurveyZipcodeItemCopyWithImpl<$Res>
    implements $SurveyZipcodeItemCopyWith<$Res> {
  _$SurveyZipcodeItemCopyWithImpl(this._value, this._then);

  final SurveyZipcodeItem _value;
  // ignore: unused_field
  final $Res Function(SurveyZipcodeItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? city = freezed,
    Object? subDistrict = freezed,
    Object? district = freezed,
    Object? postCode = freezed,
    Object? billArea = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      subDistrict: subDistrict == freezed
          ? _value.subDistrict
          : subDistrict // ignore: cast_nullable_to_non_nullable
              as String,
      district: district == freezed
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String,
      postCode: postCode == freezed
          ? _value.postCode
          : postCode // ignore: cast_nullable_to_non_nullable
              as String,
      billArea: billArea == freezed
          ? _value.billArea
          : billArea // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SurveyZipcodeItemCopyWith<$Res>
    implements $SurveyZipcodeItemCopyWith<$Res> {
  factory _$SurveyZipcodeItemCopyWith(
          _SurveyZipcodeItem value, $Res Function(_SurveyZipcodeItem) then) =
      __$SurveyZipcodeItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'sysZipid') int id,
      @JsonKey(name: 'kota') String city,
      @JsonKey(name: 'kecamatan') String subDistrict,
      @JsonKey(name: 'kelurahan') String district,
      @JsonKey(name: 'kodepos') String postCode,
      @JsonKey(name: 'areatagih') String billArea});
}

/// @nodoc
class __$SurveyZipcodeItemCopyWithImpl<$Res>
    extends _$SurveyZipcodeItemCopyWithImpl<$Res>
    implements _$SurveyZipcodeItemCopyWith<$Res> {
  __$SurveyZipcodeItemCopyWithImpl(
      _SurveyZipcodeItem _value, $Res Function(_SurveyZipcodeItem) _then)
      : super(_value, (v) => _then(v as _SurveyZipcodeItem));

  @override
  _SurveyZipcodeItem get _value => super._value as _SurveyZipcodeItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? city = freezed,
    Object? subDistrict = freezed,
    Object? district = freezed,
    Object? postCode = freezed,
    Object? billArea = freezed,
  }) {
    return _then(_SurveyZipcodeItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      subDistrict: subDistrict == freezed
          ? _value.subDistrict
          : subDistrict // ignore: cast_nullable_to_non_nullable
              as String,
      district: district == freezed
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String,
      postCode: postCode == freezed
          ? _value.postCode
          : postCode // ignore: cast_nullable_to_non_nullable
              as String,
      billArea: billArea == freezed
          ? _value.billArea
          : billArea // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SurveyZipcodeItem implements _SurveyZipcodeItem {
  const _$_SurveyZipcodeItem(
      {@JsonKey(name: 'sysZipid') required this.id,
      @JsonKey(name: 'kota') required this.city,
      @JsonKey(name: 'kecamatan') required this.subDistrict,
      @JsonKey(name: 'kelurahan') required this.district,
      @JsonKey(name: 'kodepos') required this.postCode,
      @JsonKey(name: 'areatagih') required this.billArea});

  factory _$_SurveyZipcodeItem.fromJson(Map<String, dynamic> json) =>
      _$$_SurveyZipcodeItemFromJson(json);

  @override
  @JsonKey(name: 'sysZipid')
  final int id;
  @override
  @JsonKey(name: 'kota')
  final String city;
  @override
  @JsonKey(name: 'kecamatan')
  final String subDistrict;
  @override
  @JsonKey(name: 'kelurahan')
  final String district;
  @override
  @JsonKey(name: 'kodepos')
  final String postCode;
  @override
  @JsonKey(name: 'areatagih')
  final String billArea;

  @override
  String toString() {
    return 'SurveyZipcodeItem(id: $id, city: $city, subDistrict: $subDistrict, district: $district, postCode: $postCode, billArea: $billArea)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SurveyZipcodeItem &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality()
                .equals(other.subDistrict, subDistrict) &&
            const DeepCollectionEquality().equals(other.district, district) &&
            const DeepCollectionEquality().equals(other.postCode, postCode) &&
            const DeepCollectionEquality().equals(other.billArea, billArea));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(subDistrict),
      const DeepCollectionEquality().hash(district),
      const DeepCollectionEquality().hash(postCode),
      const DeepCollectionEquality().hash(billArea));

  @JsonKey(ignore: true)
  @override
  _$SurveyZipcodeItemCopyWith<_SurveyZipcodeItem> get copyWith =>
      __$SurveyZipcodeItemCopyWithImpl<_SurveyZipcodeItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SurveyZipcodeItemToJson(this);
  }
}

abstract class _SurveyZipcodeItem implements SurveyZipcodeItem {
  const factory _SurveyZipcodeItem(
          {@JsonKey(name: 'sysZipid') required int id,
          @JsonKey(name: 'kota') required String city,
          @JsonKey(name: 'kecamatan') required String subDistrict,
          @JsonKey(name: 'kelurahan') required String district,
          @JsonKey(name: 'kodepos') required String postCode,
          @JsonKey(name: 'areatagih') required String billArea}) =
      _$_SurveyZipcodeItem;

  factory _SurveyZipcodeItem.fromJson(Map<String, dynamic> json) =
      _$_SurveyZipcodeItem.fromJson;

  @override
  @JsonKey(name: 'sysZipid')
  int get id;
  @override
  @JsonKey(name: 'kota')
  String get city;
  @override
  @JsonKey(name: 'kecamatan')
  String get subDistrict;
  @override
  @JsonKey(name: 'kelurahan')
  String get district;
  @override
  @JsonKey(name: 'kodepos')
  String get postCode;
  @override
  @JsonKey(name: 'areatagih')
  String get billArea;
  @override
  @JsonKey(ignore: true)
  _$SurveyZipcodeItemCopyWith<_SurveyZipcodeItem> get copyWith =>
      throw _privateConstructorUsedError;
}
