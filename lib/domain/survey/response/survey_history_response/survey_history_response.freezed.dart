// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'survey_history_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SurveyHistoryResponse _$SurveyHistoryResponseFromJson(
    Map<String, dynamic> json) {
  return _SurveyHistoryResponse.fromJson(json);
}

/// @nodoc
class _$SurveyHistoryResponseTearOff {
  const _$SurveyHistoryResponseTearOff();

  _SurveyHistoryResponse call(
      {required int status,
      required String message,
      required List<HistoryItem> data}) {
    return _SurveyHistoryResponse(
      status: status,
      message: message,
      data: data,
    );
  }

  SurveyHistoryResponse fromJson(Map<String, Object?> json) {
    return SurveyHistoryResponse.fromJson(json);
  }
}

/// @nodoc
const $SurveyHistoryResponse = _$SurveyHistoryResponseTearOff();

/// @nodoc
mixin _$SurveyHistoryResponse {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<HistoryItem> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurveyHistoryResponseCopyWith<SurveyHistoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyHistoryResponseCopyWith<$Res> {
  factory $SurveyHistoryResponseCopyWith(SurveyHistoryResponse value,
          $Res Function(SurveyHistoryResponse) then) =
      _$SurveyHistoryResponseCopyWithImpl<$Res>;
  $Res call({int status, String message, List<HistoryItem> data});
}

/// @nodoc
class _$SurveyHistoryResponseCopyWithImpl<$Res>
    implements $SurveyHistoryResponseCopyWith<$Res> {
  _$SurveyHistoryResponseCopyWithImpl(this._value, this._then);

  final SurveyHistoryResponse _value;
  // ignore: unused_field
  final $Res Function(SurveyHistoryResponse) _then;

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
              as List<HistoryItem>,
    ));
  }
}

/// @nodoc
abstract class _$SurveyHistoryResponseCopyWith<$Res>
    implements $SurveyHistoryResponseCopyWith<$Res> {
  factory _$SurveyHistoryResponseCopyWith(_SurveyHistoryResponse value,
          $Res Function(_SurveyHistoryResponse) then) =
      __$SurveyHistoryResponseCopyWithImpl<$Res>;
  @override
  $Res call({int status, String message, List<HistoryItem> data});
}

/// @nodoc
class __$SurveyHistoryResponseCopyWithImpl<$Res>
    extends _$SurveyHistoryResponseCopyWithImpl<$Res>
    implements _$SurveyHistoryResponseCopyWith<$Res> {
  __$SurveyHistoryResponseCopyWithImpl(_SurveyHistoryResponse _value,
      $Res Function(_SurveyHistoryResponse) _then)
      : super(_value, (v) => _then(v as _SurveyHistoryResponse));

  @override
  _SurveyHistoryResponse get _value => super._value as _SurveyHistoryResponse;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_SurveyHistoryResponse(
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
              as List<HistoryItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SurveyHistoryResponse implements _SurveyHistoryResponse {
  const _$_SurveyHistoryResponse(
      {required this.status, required this.message, required this.data});

  factory _$_SurveyHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SurveyHistoryResponseFromJson(json);

  @override
  final int status;
  @override
  final String message;
  @override
  final List<HistoryItem> data;

  @override
  String toString() {
    return 'SurveyHistoryResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SurveyHistoryResponse &&
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
  _$SurveyHistoryResponseCopyWith<_SurveyHistoryResponse> get copyWith =>
      __$SurveyHistoryResponseCopyWithImpl<_SurveyHistoryResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SurveyHistoryResponseToJson(this);
  }
}

abstract class _SurveyHistoryResponse implements SurveyHistoryResponse {
  const factory _SurveyHistoryResponse(
      {required int status,
      required String message,
      required List<HistoryItem> data}) = _$_SurveyHistoryResponse;

  factory _SurveyHistoryResponse.fromJson(Map<String, dynamic> json) =
      _$_SurveyHistoryResponse.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  List<HistoryItem> get data;
  @override
  @JsonKey(ignore: true)
  _$SurveyHistoryResponseCopyWith<_SurveyHistoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

HistoryItem _$HistoryItemFromJson(Map<String, dynamic> json) {
  return _HistoryItem.fromJson(json);
}

/// @nodoc
class _$HistoryItemTearOff {
  const _$HistoryItemTearOff();

  _HistoryItem call(
      {required String? surveyId,
      @JsonKey(name: 'nik') required String? surveyorNIK,
      @JsonKey(name: 'nama') required String? name,
      @JsonKey(name: 'ktp_no') required String? clientID,
      @JsonKey(name: 'nopol') required String? platNumber,
      @JsonKey(name: 'alamat') required String? address,
      @JsonKey(name: 'credate') required DateTime? creDate,
      required String? latitude,
      required String? longitude}) {
    return _HistoryItem(
      surveyId: surveyId,
      surveyorNIK: surveyorNIK,
      name: name,
      clientID: clientID,
      platNumber: platNumber,
      address: address,
      creDate: creDate,
      latitude: latitude,
      longitude: longitude,
    );
  }

  HistoryItem fromJson(Map<String, Object?> json) {
    return HistoryItem.fromJson(json);
  }
}

/// @nodoc
const $HistoryItem = _$HistoryItemTearOff();

/// @nodoc
mixin _$HistoryItem {
  String? get surveyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'nik')
  String? get surveyorNIK => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'ktp_no')
  String? get clientID => throw _privateConstructorUsedError;
  @JsonKey(name: 'nopol')
  String? get platNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'alamat')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'credate')
  DateTime? get creDate => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoryItemCopyWith<HistoryItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryItemCopyWith<$Res> {
  factory $HistoryItemCopyWith(
          HistoryItem value, $Res Function(HistoryItem) then) =
      _$HistoryItemCopyWithImpl<$Res>;
  $Res call(
      {String? surveyId,
      @JsonKey(name: 'nik') String? surveyorNIK,
      @JsonKey(name: 'nama') String? name,
      @JsonKey(name: 'ktp_no') String? clientID,
      @JsonKey(name: 'nopol') String? platNumber,
      @JsonKey(name: 'alamat') String? address,
      @JsonKey(name: 'credate') DateTime? creDate,
      String? latitude,
      String? longitude});
}

/// @nodoc
class _$HistoryItemCopyWithImpl<$Res> implements $HistoryItemCopyWith<$Res> {
  _$HistoryItemCopyWithImpl(this._value, this._then);

  final HistoryItem _value;
  // ignore: unused_field
  final $Res Function(HistoryItem) _then;

  @override
  $Res call({
    Object? surveyId = freezed,
    Object? surveyorNIK = freezed,
    Object? name = freezed,
    Object? clientID = freezed,
    Object? platNumber = freezed,
    Object? address = freezed,
    Object? creDate = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      surveyId: surveyId == freezed
          ? _value.surveyId
          : surveyId // ignore: cast_nullable_to_non_nullable
              as String?,
      surveyorNIK: surveyorNIK == freezed
          ? _value.surveyorNIK
          : surveyorNIK // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      clientID: clientID == freezed
          ? _value.clientID
          : clientID // ignore: cast_nullable_to_non_nullable
              as String?,
      platNumber: platNumber == freezed
          ? _value.platNumber
          : platNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      creDate: creDate == freezed
          ? _value.creDate
          : creDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$HistoryItemCopyWith<$Res>
    implements $HistoryItemCopyWith<$Res> {
  factory _$HistoryItemCopyWith(
          _HistoryItem value, $Res Function(_HistoryItem) then) =
      __$HistoryItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? surveyId,
      @JsonKey(name: 'nik') String? surveyorNIK,
      @JsonKey(name: 'nama') String? name,
      @JsonKey(name: 'ktp_no') String? clientID,
      @JsonKey(name: 'nopol') String? platNumber,
      @JsonKey(name: 'alamat') String? address,
      @JsonKey(name: 'credate') DateTime? creDate,
      String? latitude,
      String? longitude});
}

/// @nodoc
class __$HistoryItemCopyWithImpl<$Res> extends _$HistoryItemCopyWithImpl<$Res>
    implements _$HistoryItemCopyWith<$Res> {
  __$HistoryItemCopyWithImpl(
      _HistoryItem _value, $Res Function(_HistoryItem) _then)
      : super(_value, (v) => _then(v as _HistoryItem));

  @override
  _HistoryItem get _value => super._value as _HistoryItem;

  @override
  $Res call({
    Object? surveyId = freezed,
    Object? surveyorNIK = freezed,
    Object? name = freezed,
    Object? clientID = freezed,
    Object? platNumber = freezed,
    Object? address = freezed,
    Object? creDate = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_HistoryItem(
      surveyId: surveyId == freezed
          ? _value.surveyId
          : surveyId // ignore: cast_nullable_to_non_nullable
              as String?,
      surveyorNIK: surveyorNIK == freezed
          ? _value.surveyorNIK
          : surveyorNIK // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      clientID: clientID == freezed
          ? _value.clientID
          : clientID // ignore: cast_nullable_to_non_nullable
              as String?,
      platNumber: platNumber == freezed
          ? _value.platNumber
          : platNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      creDate: creDate == freezed
          ? _value.creDate
          : creDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HistoryItem implements _HistoryItem {
  const _$_HistoryItem(
      {required this.surveyId,
      @JsonKey(name: 'nik') required this.surveyorNIK,
      @JsonKey(name: 'nama') required this.name,
      @JsonKey(name: 'ktp_no') required this.clientID,
      @JsonKey(name: 'nopol') required this.platNumber,
      @JsonKey(name: 'alamat') required this.address,
      @JsonKey(name: 'credate') required this.creDate,
      required this.latitude,
      required this.longitude});

  factory _$_HistoryItem.fromJson(Map<String, dynamic> json) =>
      _$$_HistoryItemFromJson(json);

  @override
  final String? surveyId;
  @override
  @JsonKey(name: 'nik')
  final String? surveyorNIK;
  @override
  @JsonKey(name: 'nama')
  final String? name;
  @override
  @JsonKey(name: 'ktp_no')
  final String? clientID;
  @override
  @JsonKey(name: 'nopol')
  final String? platNumber;
  @override
  @JsonKey(name: 'alamat')
  final String? address;
  @override
  @JsonKey(name: 'credate')
  final DateTime? creDate;
  @override
  final String? latitude;
  @override
  final String? longitude;

  @override
  String toString() {
    return 'HistoryItem(surveyId: $surveyId, surveyorNIK: $surveyorNIK, name: $name, clientID: $clientID, platNumber: $platNumber, address: $address, creDate: $creDate, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HistoryItem &&
            const DeepCollectionEquality().equals(other.surveyId, surveyId) &&
            const DeepCollectionEquality()
                .equals(other.surveyorNIK, surveyorNIK) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.clientID, clientID) &&
            const DeepCollectionEquality()
                .equals(other.platNumber, platNumber) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.creDate, creDate) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(surveyId),
      const DeepCollectionEquality().hash(surveyorNIK),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(clientID),
      const DeepCollectionEquality().hash(platNumber),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(creDate),
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude));

  @JsonKey(ignore: true)
  @override
  _$HistoryItemCopyWith<_HistoryItem> get copyWith =>
      __$HistoryItemCopyWithImpl<_HistoryItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HistoryItemToJson(this);
  }
}

abstract class _HistoryItem implements HistoryItem {
  const factory _HistoryItem(
      {required String? surveyId,
      @JsonKey(name: 'nik') required String? surveyorNIK,
      @JsonKey(name: 'nama') required String? name,
      @JsonKey(name: 'ktp_no') required String? clientID,
      @JsonKey(name: 'nopol') required String? platNumber,
      @JsonKey(name: 'alamat') required String? address,
      @JsonKey(name: 'credate') required DateTime? creDate,
      required String? latitude,
      required String? longitude}) = _$_HistoryItem;

  factory _HistoryItem.fromJson(Map<String, dynamic> json) =
      _$_HistoryItem.fromJson;

  @override
  String? get surveyId;
  @override
  @JsonKey(name: 'nik')
  String? get surveyorNIK;
  @override
  @JsonKey(name: 'nama')
  String? get name;
  @override
  @JsonKey(name: 'ktp_no')
  String? get clientID;
  @override
  @JsonKey(name: 'nopol')
  String? get platNumber;
  @override
  @JsonKey(name: 'alamat')
  String? get address;
  @override
  @JsonKey(name: 'credate')
  DateTime? get creDate;
  @override
  String? get latitude;
  @override
  String? get longitude;
  @override
  @JsonKey(ignore: true)
  _$HistoryItemCopyWith<_HistoryItem> get copyWith =>
      throw _privateConstructorUsedError;
}
