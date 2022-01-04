// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'survey_task_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SurveyTaskListResponse _$SurveyTaskListResponseFromJson(
    Map<String, dynamic> json) {
  return _SurveyTaskListResponse.fromJson(json);
}

/// @nodoc
class _$SurveyTaskListResponseTearOff {
  const _$SurveyTaskListResponseTearOff();

  _SurveyTaskListResponse call(
      {required int? status,
      required String? message,
      required List<SurveyTask?> data}) {
    return _SurveyTaskListResponse(
      status: status,
      message: message,
      data: data,
    );
  }

  SurveyTaskListResponse fromJson(Map<String, Object?> json) {
    return SurveyTaskListResponse.fromJson(json);
  }
}

/// @nodoc
const $SurveyTaskListResponse = _$SurveyTaskListResponseTearOff();

/// @nodoc
mixin _$SurveyTaskListResponse {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<SurveyTask?> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurveyTaskListResponseCopyWith<SurveyTaskListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyTaskListResponseCopyWith<$Res> {
  factory $SurveyTaskListResponseCopyWith(SurveyTaskListResponse value,
          $Res Function(SurveyTaskListResponse) then) =
      _$SurveyTaskListResponseCopyWithImpl<$Res>;
  $Res call({int? status, String? message, List<SurveyTask?> data});
}

/// @nodoc
class _$SurveyTaskListResponseCopyWithImpl<$Res>
    implements $SurveyTaskListResponseCopyWith<$Res> {
  _$SurveyTaskListResponseCopyWithImpl(this._value, this._then);

  final SurveyTaskListResponse _value;
  // ignore: unused_field
  final $Res Function(SurveyTaskListResponse) _then;

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
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SurveyTask?>,
    ));
  }
}

/// @nodoc
abstract class _$SurveyTaskListResponseCopyWith<$Res>
    implements $SurveyTaskListResponseCopyWith<$Res> {
  factory _$SurveyTaskListResponseCopyWith(_SurveyTaskListResponse value,
          $Res Function(_SurveyTaskListResponse) then) =
      __$SurveyTaskListResponseCopyWithImpl<$Res>;
  @override
  $Res call({int? status, String? message, List<SurveyTask?> data});
}

/// @nodoc
class __$SurveyTaskListResponseCopyWithImpl<$Res>
    extends _$SurveyTaskListResponseCopyWithImpl<$Res>
    implements _$SurveyTaskListResponseCopyWith<$Res> {
  __$SurveyTaskListResponseCopyWithImpl(_SurveyTaskListResponse _value,
      $Res Function(_SurveyTaskListResponse) _then)
      : super(_value, (v) => _then(v as _SurveyTaskListResponse));

  @override
  _SurveyTaskListResponse get _value => super._value as _SurveyTaskListResponse;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_SurveyTaskListResponse(
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
              as List<SurveyTask?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SurveyTaskListResponse implements _SurveyTaskListResponse {
  const _$_SurveyTaskListResponse(
      {required this.status, required this.message, required this.data});

  factory _$_SurveyTaskListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SurveyTaskListResponseFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final List<SurveyTask?> data;

  @override
  String toString() {
    return 'SurveyTaskListResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SurveyTaskListResponse &&
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
  _$SurveyTaskListResponseCopyWith<_SurveyTaskListResponse> get copyWith =>
      __$SurveyTaskListResponseCopyWithImpl<_SurveyTaskListResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SurveyTaskListResponseToJson(this);
  }
}

abstract class _SurveyTaskListResponse implements SurveyTaskListResponse {
  const factory _SurveyTaskListResponse(
      {required int? status,
      required String? message,
      required List<SurveyTask?> data}) = _$_SurveyTaskListResponse;

  factory _SurveyTaskListResponse.fromJson(Map<String, dynamic> json) =
      _$_SurveyTaskListResponse.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  List<SurveyTask?> get data;
  @override
  @JsonKey(ignore: true)
  _$SurveyTaskListResponseCopyWith<_SurveyTaskListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

SurveyTask _$SurveyTaskFromJson(Map<String, dynamic> json) {
  return _SurveyTask.fromJson(json);
}

/// @nodoc
class _$SurveyTaskTearOff {
  const _$SurveyTaskTearOff();

  _SurveyTask call(
      {required String? taskId,
      required String? nik,
      @JsonKey(name: 'nama') required String? name,
      @JsonKey(name: 'nopol') required String? platNumber,
      @JsonKey(name: 'credate') required DateTime? creDate,
      @JsonKey(name: 'ispush') required int? isPush,
      required String? latitude,
      required String? longitude}) {
    return _SurveyTask(
      taskId: taskId,
      nik: nik,
      name: name,
      platNumber: platNumber,
      creDate: creDate,
      isPush: isPush,
      latitude: latitude,
      longitude: longitude,
    );
  }

  SurveyTask fromJson(Map<String, Object?> json) {
    return SurveyTask.fromJson(json);
  }
}

/// @nodoc
const $SurveyTask = _$SurveyTaskTearOff();

/// @nodoc
mixin _$SurveyTask {
  String? get taskId => throw _privateConstructorUsedError;
  String? get nik => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'nopol')
  String? get platNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'credate')
  DateTime? get creDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'ispush')
  int? get isPush => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurveyTaskCopyWith<SurveyTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyTaskCopyWith<$Res> {
  factory $SurveyTaskCopyWith(
          SurveyTask value, $Res Function(SurveyTask) then) =
      _$SurveyTaskCopyWithImpl<$Res>;
  $Res call(
      {String? taskId,
      String? nik,
      @JsonKey(name: 'nama') String? name,
      @JsonKey(name: 'nopol') String? platNumber,
      @JsonKey(name: 'credate') DateTime? creDate,
      @JsonKey(name: 'ispush') int? isPush,
      String? latitude,
      String? longitude});
}

/// @nodoc
class _$SurveyTaskCopyWithImpl<$Res> implements $SurveyTaskCopyWith<$Res> {
  _$SurveyTaskCopyWithImpl(this._value, this._then);

  final SurveyTask _value;
  // ignore: unused_field
  final $Res Function(SurveyTask) _then;

  @override
  $Res call({
    Object? taskId = freezed,
    Object? nik = freezed,
    Object? name = freezed,
    Object? platNumber = freezed,
    Object? creDate = freezed,
    Object? isPush = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      taskId: taskId == freezed
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String?,
      nik: nik == freezed
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      platNumber: platNumber == freezed
          ? _value.platNumber
          : platNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      creDate: creDate == freezed
          ? _value.creDate
          : creDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isPush: isPush == freezed
          ? _value.isPush
          : isPush // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$SurveyTaskCopyWith<$Res> implements $SurveyTaskCopyWith<$Res> {
  factory _$SurveyTaskCopyWith(
          _SurveyTask value, $Res Function(_SurveyTask) then) =
      __$SurveyTaskCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? taskId,
      String? nik,
      @JsonKey(name: 'nama') String? name,
      @JsonKey(name: 'nopol') String? platNumber,
      @JsonKey(name: 'credate') DateTime? creDate,
      @JsonKey(name: 'ispush') int? isPush,
      String? latitude,
      String? longitude});
}

/// @nodoc
class __$SurveyTaskCopyWithImpl<$Res> extends _$SurveyTaskCopyWithImpl<$Res>
    implements _$SurveyTaskCopyWith<$Res> {
  __$SurveyTaskCopyWithImpl(
      _SurveyTask _value, $Res Function(_SurveyTask) _then)
      : super(_value, (v) => _then(v as _SurveyTask));

  @override
  _SurveyTask get _value => super._value as _SurveyTask;

  @override
  $Res call({
    Object? taskId = freezed,
    Object? nik = freezed,
    Object? name = freezed,
    Object? platNumber = freezed,
    Object? creDate = freezed,
    Object? isPush = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_SurveyTask(
      taskId: taskId == freezed
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String?,
      nik: nik == freezed
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      platNumber: platNumber == freezed
          ? _value.platNumber
          : platNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      creDate: creDate == freezed
          ? _value.creDate
          : creDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isPush: isPush == freezed
          ? _value.isPush
          : isPush // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$_SurveyTask implements _SurveyTask {
  const _$_SurveyTask(
      {required this.taskId,
      required this.nik,
      @JsonKey(name: 'nama') required this.name,
      @JsonKey(name: 'nopol') required this.platNumber,
      @JsonKey(name: 'credate') required this.creDate,
      @JsonKey(name: 'ispush') required this.isPush,
      required this.latitude,
      required this.longitude});

  factory _$_SurveyTask.fromJson(Map<String, dynamic> json) =>
      _$$_SurveyTaskFromJson(json);

  @override
  final String? taskId;
  @override
  final String? nik;
  @override
  @JsonKey(name: 'nama')
  final String? name;
  @override
  @JsonKey(name: 'nopol')
  final String? platNumber;
  @override
  @JsonKey(name: 'credate')
  final DateTime? creDate;
  @override
  @JsonKey(name: 'ispush')
  final int? isPush;
  @override
  final String? latitude;
  @override
  final String? longitude;

  @override
  String toString() {
    return 'SurveyTask(taskId: $taskId, nik: $nik, name: $name, platNumber: $platNumber, creDate: $creDate, isPush: $isPush, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SurveyTask &&
            const DeepCollectionEquality().equals(other.taskId, taskId) &&
            const DeepCollectionEquality().equals(other.nik, nik) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.platNumber, platNumber) &&
            const DeepCollectionEquality().equals(other.creDate, creDate) &&
            const DeepCollectionEquality().equals(other.isPush, isPush) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(taskId),
      const DeepCollectionEquality().hash(nik),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(platNumber),
      const DeepCollectionEquality().hash(creDate),
      const DeepCollectionEquality().hash(isPush),
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude));

  @JsonKey(ignore: true)
  @override
  _$SurveyTaskCopyWith<_SurveyTask> get copyWith =>
      __$SurveyTaskCopyWithImpl<_SurveyTask>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SurveyTaskToJson(this);
  }
}

abstract class _SurveyTask implements SurveyTask {
  const factory _SurveyTask(
      {required String? taskId,
      required String? nik,
      @JsonKey(name: 'nama') required String? name,
      @JsonKey(name: 'nopol') required String? platNumber,
      @JsonKey(name: 'credate') required DateTime? creDate,
      @JsonKey(name: 'ispush') required int? isPush,
      required String? latitude,
      required String? longitude}) = _$_SurveyTask;

  factory _SurveyTask.fromJson(Map<String, dynamic> json) =
      _$_SurveyTask.fromJson;

  @override
  String? get taskId;
  @override
  String? get nik;
  @override
  @JsonKey(name: 'nama')
  String? get name;
  @override
  @JsonKey(name: 'nopol')
  String? get platNumber;
  @override
  @JsonKey(name: 'credate')
  DateTime? get creDate;
  @override
  @JsonKey(name: 'ispush')
  int? get isPush;
  @override
  String? get latitude;
  @override
  String? get longitude;
  @override
  @JsonKey(ignore: true)
  _$SurveyTaskCopyWith<_SurveyTask> get copyWith =>
      throw _privateConstructorUsedError;
}
