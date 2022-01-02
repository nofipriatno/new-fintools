// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'survey_login_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SurveyLoginResponse _$SurveyLoginResponseFromJson(Map<String, dynamic> json) {
  return _SurveyLoginResponse.fromJson(json);
}

/// @nodoc
class _$SurveyLoginResponseTearOff {
  const _$SurveyLoginResponseTearOff();

  _SurveyLoginResponse call(
      {required int? status,
      required String? message,
      required UserData? data,
      required String? token,
      required String? refreshToken}) {
    return _SurveyLoginResponse(
      status: status,
      message: message,
      data: data,
      token: token,
      refreshToken: refreshToken,
    );
  }

  SurveyLoginResponse fromJson(Map<String, Object?> json) {
    return SurveyLoginResponse.fromJson(json);
  }
}

/// @nodoc
const $SurveyLoginResponse = _$SurveyLoginResponseTearOff();

/// @nodoc
mixin _$SurveyLoginResponse {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  UserData? get data => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurveyLoginResponseCopyWith<SurveyLoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyLoginResponseCopyWith<$Res> {
  factory $SurveyLoginResponseCopyWith(
          SurveyLoginResponse value, $Res Function(SurveyLoginResponse) then) =
      _$SurveyLoginResponseCopyWithImpl<$Res>;
  $Res call(
      {int? status,
      String? message,
      UserData? data,
      String? token,
      String? refreshToken});

  $UserDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SurveyLoginResponseCopyWithImpl<$Res>
    implements $SurveyLoginResponseCopyWith<$Res> {
  _$SurveyLoginResponseCopyWithImpl(this._value, this._then);

  final SurveyLoginResponse _value;
  // ignore: unused_field
  final $Res Function(SurveyLoginResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? token = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserData?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $UserDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$SurveyLoginResponseCopyWith<$Res>
    implements $SurveyLoginResponseCopyWith<$Res> {
  factory _$SurveyLoginResponseCopyWith(_SurveyLoginResponse value,
          $Res Function(_SurveyLoginResponse) then) =
      __$SurveyLoginResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? status,
      String? message,
      UserData? data,
      String? token,
      String? refreshToken});

  @override
  $UserDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$SurveyLoginResponseCopyWithImpl<$Res>
    extends _$SurveyLoginResponseCopyWithImpl<$Res>
    implements _$SurveyLoginResponseCopyWith<$Res> {
  __$SurveyLoginResponseCopyWithImpl(
      _SurveyLoginResponse _value, $Res Function(_SurveyLoginResponse) _then)
      : super(_value, (v) => _then(v as _SurveyLoginResponse));

  @override
  _SurveyLoginResponse get _value => super._value as _SurveyLoginResponse;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? token = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_SurveyLoginResponse(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserData?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SurveyLoginResponse implements _SurveyLoginResponse {
  const _$_SurveyLoginResponse(
      {required this.status,
      required this.message,
      required this.data,
      required this.token,
      required this.refreshToken});

  factory _$_SurveyLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SurveyLoginResponseFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final UserData? data;
  @override
  final String? token;
  @override
  final String? refreshToken;

  @override
  String toString() {
    return 'SurveyLoginResponse(status: $status, message: $message, data: $data, token: $token, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SurveyLoginResponse &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality()
                .equals(other.refreshToken, refreshToken));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(refreshToken));

  @JsonKey(ignore: true)
  @override
  _$SurveyLoginResponseCopyWith<_SurveyLoginResponse> get copyWith =>
      __$SurveyLoginResponseCopyWithImpl<_SurveyLoginResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SurveyLoginResponseToJson(this);
  }
}

abstract class _SurveyLoginResponse implements SurveyLoginResponse {
  const factory _SurveyLoginResponse(
      {required int? status,
      required String? message,
      required UserData? data,
      required String? token,
      required String? refreshToken}) = _$_SurveyLoginResponse;

  factory _SurveyLoginResponse.fromJson(Map<String, dynamic> json) =
      _$_SurveyLoginResponse.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  UserData? get data;
  @override
  String? get token;
  @override
  String? get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$SurveyLoginResponseCopyWith<_SurveyLoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
class _$UserDataTearOff {
  const _$UserDataTearOff();

  _UserData call(
      {required String? nik,
      @JsonKey(name: 'nama') required String? name,
      @JsonKey(name: 'cCode') required String code}) {
    return _UserData(
      nik: nik,
      name: name,
      code: code,
    );
  }

  UserData fromJson(Map<String, Object?> json) {
    return UserData.fromJson(json);
  }
}

/// @nodoc
const $UserData = _$UserDataTearOff();

/// @nodoc
mixin _$UserData {
  String? get nik => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'cCode')
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res>;
  $Res call(
      {String? nik,
      @JsonKey(name: 'nama') String? name,
      @JsonKey(name: 'cCode') String code});
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res> implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  final UserData _value;
  // ignore: unused_field
  final $Res Function(UserData) _then;

  @override
  $Res call({
    Object? nik = freezed,
    Object? name = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      nik: nik == freezed
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserDataCopyWith<$Res> implements $UserDataCopyWith<$Res> {
  factory _$UserDataCopyWith(_UserData value, $Res Function(_UserData) then) =
      __$UserDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? nik,
      @JsonKey(name: 'nama') String? name,
      @JsonKey(name: 'cCode') String code});
}

/// @nodoc
class __$UserDataCopyWithImpl<$Res> extends _$UserDataCopyWithImpl<$Res>
    implements _$UserDataCopyWith<$Res> {
  __$UserDataCopyWithImpl(_UserData _value, $Res Function(_UserData) _then)
      : super(_value, (v) => _then(v as _UserData));

  @override
  _UserData get _value => super._value as _UserData;

  @override
  $Res call({
    Object? nik = freezed,
    Object? name = freezed,
    Object? code = freezed,
  }) {
    return _then(_UserData(
      nik: nik == freezed
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserData implements _UserData {
  const _$_UserData(
      {required this.nik,
      @JsonKey(name: 'nama') required this.name,
      @JsonKey(name: 'cCode') required this.code});

  factory _$_UserData.fromJson(Map<String, dynamic> json) =>
      _$$_UserDataFromJson(json);

  @override
  final String? nik;
  @override
  @JsonKey(name: 'nama')
  final String? name;
  @override
  @JsonKey(name: 'cCode')
  final String code;

  @override
  String toString() {
    return 'UserData(nik: $nik, name: $name, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserData &&
            const DeepCollectionEquality().equals(other.nik, nik) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(nik),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  _$UserDataCopyWith<_UserData> get copyWith =>
      __$UserDataCopyWithImpl<_UserData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDataToJson(this);
  }
}

abstract class _UserData implements UserData {
  const factory _UserData(
      {required String? nik,
      @JsonKey(name: 'nama') required String? name,
      @JsonKey(name: 'cCode') required String code}) = _$_UserData;

  factory _UserData.fromJson(Map<String, dynamic> json) = _$_UserData.fromJson;

  @override
  String? get nik;
  @override
  @JsonKey(name: 'nama')
  String? get name;
  @override
  @JsonKey(name: 'cCode')
  String get code;
  @override
  @JsonKey(ignore: true)
  _$UserDataCopyWith<_UserData> get copyWith =>
      throw _privateConstructorUsedError;
}
