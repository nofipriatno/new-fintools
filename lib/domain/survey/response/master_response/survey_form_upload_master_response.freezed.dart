// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'survey_form_upload_master_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SurveyFormUploadMasterResponse _$SurveyFormUploadMasterResponseFromJson(
    Map<String, dynamic> json) {
  return _SurveyFormUploadMasterResponse.fromJson(json);
}

/// @nodoc
class _$SurveyFormUploadMasterResponseTearOff {
  const _$SurveyFormUploadMasterResponseTearOff();

  _SurveyFormUploadMasterResponse call(
      {required int? status,
      required String? message,
      required List<SurveyFormUploadMasterItem?> data}) {
    return _SurveyFormUploadMasterResponse(
      status: status,
      message: message,
      data: data,
    );
  }

  SurveyFormUploadMasterResponse fromJson(Map<String, Object?> json) {
    return SurveyFormUploadMasterResponse.fromJson(json);
  }
}

/// @nodoc
const $SurveyFormUploadMasterResponse =
    _$SurveyFormUploadMasterResponseTearOff();

/// @nodoc
mixin _$SurveyFormUploadMasterResponse {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<SurveyFormUploadMasterItem?> get data =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurveyFormUploadMasterResponseCopyWith<SurveyFormUploadMasterResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyFormUploadMasterResponseCopyWith<$Res> {
  factory $SurveyFormUploadMasterResponseCopyWith(
          SurveyFormUploadMasterResponse value,
          $Res Function(SurveyFormUploadMasterResponse) then) =
      _$SurveyFormUploadMasterResponseCopyWithImpl<$Res>;
  $Res call(
      {int? status, String? message, List<SurveyFormUploadMasterItem?> data});
}

/// @nodoc
class _$SurveyFormUploadMasterResponseCopyWithImpl<$Res>
    implements $SurveyFormUploadMasterResponseCopyWith<$Res> {
  _$SurveyFormUploadMasterResponseCopyWithImpl(this._value, this._then);

  final SurveyFormUploadMasterResponse _value;
  // ignore: unused_field
  final $Res Function(SurveyFormUploadMasterResponse) _then;

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
              as List<SurveyFormUploadMasterItem?>,
    ));
  }
}

/// @nodoc
abstract class _$SurveyFormUploadMasterResponseCopyWith<$Res>
    implements $SurveyFormUploadMasterResponseCopyWith<$Res> {
  factory _$SurveyFormUploadMasterResponseCopyWith(
          _SurveyFormUploadMasterResponse value,
          $Res Function(_SurveyFormUploadMasterResponse) then) =
      __$SurveyFormUploadMasterResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? status, String? message, List<SurveyFormUploadMasterItem?> data});
}

/// @nodoc
class __$SurveyFormUploadMasterResponseCopyWithImpl<$Res>
    extends _$SurveyFormUploadMasterResponseCopyWithImpl<$Res>
    implements _$SurveyFormUploadMasterResponseCopyWith<$Res> {
  __$SurveyFormUploadMasterResponseCopyWithImpl(
      _SurveyFormUploadMasterResponse _value,
      $Res Function(_SurveyFormUploadMasterResponse) _then)
      : super(_value, (v) => _then(v as _SurveyFormUploadMasterResponse));

  @override
  _SurveyFormUploadMasterResponse get _value =>
      super._value as _SurveyFormUploadMasterResponse;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_SurveyFormUploadMasterResponse(
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
              as List<SurveyFormUploadMasterItem?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SurveyFormUploadMasterResponse
    implements _SurveyFormUploadMasterResponse {
  const _$_SurveyFormUploadMasterResponse(
      {required this.status, required this.message, required this.data});

  factory _$_SurveyFormUploadMasterResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_SurveyFormUploadMasterResponseFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final List<SurveyFormUploadMasterItem?> data;

  @override
  String toString() {
    return 'SurveyFormUploadMasterResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SurveyFormUploadMasterResponse &&
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
  _$SurveyFormUploadMasterResponseCopyWith<_SurveyFormUploadMasterResponse>
      get copyWith => __$SurveyFormUploadMasterResponseCopyWithImpl<
          _SurveyFormUploadMasterResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SurveyFormUploadMasterResponseToJson(this);
  }
}

abstract class _SurveyFormUploadMasterResponse
    implements SurveyFormUploadMasterResponse {
  const factory _SurveyFormUploadMasterResponse(
          {required int? status,
          required String? message,
          required List<SurveyFormUploadMasterItem?> data}) =
      _$_SurveyFormUploadMasterResponse;

  factory _SurveyFormUploadMasterResponse.fromJson(Map<String, dynamic> json) =
      _$_SurveyFormUploadMasterResponse.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  List<SurveyFormUploadMasterItem?> get data;
  @override
  @JsonKey(ignore: true)
  _$SurveyFormUploadMasterResponseCopyWith<_SurveyFormUploadMasterResponse>
      get copyWith => throw _privateConstructorUsedError;
}

SurveyFormUploadMasterItem _$SurveyFormUploadMasterItemFromJson(
    Map<String, dynamic> json) {
  return _SurveyFormUploadMasterItem.fromJson(json);
}

/// @nodoc
class _$SurveyFormUploadMasterItemTearOff {
  const _$SurveyFormUploadMasterItemTearOff();

  _SurveyFormUploadMasterItem call(
      {required String? id,
      @JsonKey(name: 'idform') required String? idForm,
      @JsonKey(name: 'kode') required String? code,
      @JsonKey(name: 'kelengkapan') required String? name,
      required String? type,
      @JsonKey(name: 'formname') required String? formName,
      required int? count,
      @JsonKey(name: 'credate') required DateTime? creDate,
      @JsonKey(name: 'creby') required String? creBy,
      @JsonKey(name: 'moddate') required DateTime? modDate,
      @JsonKey(name: 'modby') required String? modBy,
      required bool? mandatory}) {
    return _SurveyFormUploadMasterItem(
      id: id,
      idForm: idForm,
      code: code,
      name: name,
      type: type,
      formName: formName,
      count: count,
      creDate: creDate,
      creBy: creBy,
      modDate: modDate,
      modBy: modBy,
      mandatory: mandatory,
    );
  }

  SurveyFormUploadMasterItem fromJson(Map<String, Object?> json) {
    return SurveyFormUploadMasterItem.fromJson(json);
  }
}

/// @nodoc
const $SurveyFormUploadMasterItem = _$SurveyFormUploadMasterItemTearOff();

/// @nodoc
mixin _$SurveyFormUploadMasterItem {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'idform')
  String? get idForm => throw _privateConstructorUsedError;
  @JsonKey(name: 'kode')
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'kelengkapan')
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'formname')
  String? get formName => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'credate')
  DateTime? get creDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'creby')
  String? get creBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'moddate')
  DateTime? get modDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'modby')
  String? get modBy => throw _privateConstructorUsedError;
  bool? get mandatory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurveyFormUploadMasterItemCopyWith<SurveyFormUploadMasterItem>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyFormUploadMasterItemCopyWith<$Res> {
  factory $SurveyFormUploadMasterItemCopyWith(SurveyFormUploadMasterItem value,
          $Res Function(SurveyFormUploadMasterItem) then) =
      _$SurveyFormUploadMasterItemCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      @JsonKey(name: 'idform') String? idForm,
      @JsonKey(name: 'kode') String? code,
      @JsonKey(name: 'kelengkapan') String? name,
      String? type,
      @JsonKey(name: 'formname') String? formName,
      int? count,
      @JsonKey(name: 'credate') DateTime? creDate,
      @JsonKey(name: 'creby') String? creBy,
      @JsonKey(name: 'moddate') DateTime? modDate,
      @JsonKey(name: 'modby') String? modBy,
      bool? mandatory});
}

/// @nodoc
class _$SurveyFormUploadMasterItemCopyWithImpl<$Res>
    implements $SurveyFormUploadMasterItemCopyWith<$Res> {
  _$SurveyFormUploadMasterItemCopyWithImpl(this._value, this._then);

  final SurveyFormUploadMasterItem _value;
  // ignore: unused_field
  final $Res Function(SurveyFormUploadMasterItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? idForm = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? formName = freezed,
    Object? count = freezed,
    Object? creDate = freezed,
    Object? creBy = freezed,
    Object? modDate = freezed,
    Object? modBy = freezed,
    Object? mandatory = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      idForm: idForm == freezed
          ? _value.idForm
          : idForm // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      formName: formName == freezed
          ? _value.formName
          : formName // ignore: cast_nullable_to_non_nullable
              as String?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      creDate: creDate == freezed
          ? _value.creDate
          : creDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      creBy: creBy == freezed
          ? _value.creBy
          : creBy // ignore: cast_nullable_to_non_nullable
              as String?,
      modDate: modDate == freezed
          ? _value.modDate
          : modDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      modBy: modBy == freezed
          ? _value.modBy
          : modBy // ignore: cast_nullable_to_non_nullable
              as String?,
      mandatory: mandatory == freezed
          ? _value.mandatory
          : mandatory // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$SurveyFormUploadMasterItemCopyWith<$Res>
    implements $SurveyFormUploadMasterItemCopyWith<$Res> {
  factory _$SurveyFormUploadMasterItemCopyWith(
          _SurveyFormUploadMasterItem value,
          $Res Function(_SurveyFormUploadMasterItem) then) =
      __$SurveyFormUploadMasterItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      @JsonKey(name: 'idform') String? idForm,
      @JsonKey(name: 'kode') String? code,
      @JsonKey(name: 'kelengkapan') String? name,
      String? type,
      @JsonKey(name: 'formname') String? formName,
      int? count,
      @JsonKey(name: 'credate') DateTime? creDate,
      @JsonKey(name: 'creby') String? creBy,
      @JsonKey(name: 'moddate') DateTime? modDate,
      @JsonKey(name: 'modby') String? modBy,
      bool? mandatory});
}

/// @nodoc
class __$SurveyFormUploadMasterItemCopyWithImpl<$Res>
    extends _$SurveyFormUploadMasterItemCopyWithImpl<$Res>
    implements _$SurveyFormUploadMasterItemCopyWith<$Res> {
  __$SurveyFormUploadMasterItemCopyWithImpl(_SurveyFormUploadMasterItem _value,
      $Res Function(_SurveyFormUploadMasterItem) _then)
      : super(_value, (v) => _then(v as _SurveyFormUploadMasterItem));

  @override
  _SurveyFormUploadMasterItem get _value =>
      super._value as _SurveyFormUploadMasterItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? idForm = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? formName = freezed,
    Object? count = freezed,
    Object? creDate = freezed,
    Object? creBy = freezed,
    Object? modDate = freezed,
    Object? modBy = freezed,
    Object? mandatory = freezed,
  }) {
    return _then(_SurveyFormUploadMasterItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      idForm: idForm == freezed
          ? _value.idForm
          : idForm // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      formName: formName == freezed
          ? _value.formName
          : formName // ignore: cast_nullable_to_non_nullable
              as String?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      creDate: creDate == freezed
          ? _value.creDate
          : creDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      creBy: creBy == freezed
          ? _value.creBy
          : creBy // ignore: cast_nullable_to_non_nullable
              as String?,
      modDate: modDate == freezed
          ? _value.modDate
          : modDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      modBy: modBy == freezed
          ? _value.modBy
          : modBy // ignore: cast_nullable_to_non_nullable
              as String?,
      mandatory: mandatory == freezed
          ? _value.mandatory
          : mandatory // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SurveyFormUploadMasterItem implements _SurveyFormUploadMasterItem {
  const _$_SurveyFormUploadMasterItem(
      {required this.id,
      @JsonKey(name: 'idform') required this.idForm,
      @JsonKey(name: 'kode') required this.code,
      @JsonKey(name: 'kelengkapan') required this.name,
      required this.type,
      @JsonKey(name: 'formname') required this.formName,
      required this.count,
      @JsonKey(name: 'credate') required this.creDate,
      @JsonKey(name: 'creby') required this.creBy,
      @JsonKey(name: 'moddate') required this.modDate,
      @JsonKey(name: 'modby') required this.modBy,
      required this.mandatory});

  factory _$_SurveyFormUploadMasterItem.fromJson(Map<String, dynamic> json) =>
      _$$_SurveyFormUploadMasterItemFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'idform')
  final String? idForm;
  @override
  @JsonKey(name: 'kode')
  final String? code;
  @override
  @JsonKey(name: 'kelengkapan')
  final String? name;
  @override
  final String? type;
  @override
  @JsonKey(name: 'formname')
  final String? formName;
  @override
  final int? count;
  @override
  @JsonKey(name: 'credate')
  final DateTime? creDate;
  @override
  @JsonKey(name: 'creby')
  final String? creBy;
  @override
  @JsonKey(name: 'moddate')
  final DateTime? modDate;
  @override
  @JsonKey(name: 'modby')
  final String? modBy;
  @override
  final bool? mandatory;

  @override
  String toString() {
    return 'SurveyFormUploadMasterItem(id: $id, idForm: $idForm, code: $code, name: $name, type: $type, formName: $formName, count: $count, creDate: $creDate, creBy: $creBy, modDate: $modDate, modBy: $modBy, mandatory: $mandatory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SurveyFormUploadMasterItem &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.idForm, idForm) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.formName, formName) &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other.creDate, creDate) &&
            const DeepCollectionEquality().equals(other.creBy, creBy) &&
            const DeepCollectionEquality().equals(other.modDate, modDate) &&
            const DeepCollectionEquality().equals(other.modBy, modBy) &&
            const DeepCollectionEquality().equals(other.mandatory, mandatory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(idForm),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(formName),
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(creDate),
      const DeepCollectionEquality().hash(creBy),
      const DeepCollectionEquality().hash(modDate),
      const DeepCollectionEquality().hash(modBy),
      const DeepCollectionEquality().hash(mandatory));

  @JsonKey(ignore: true)
  @override
  _$SurveyFormUploadMasterItemCopyWith<_SurveyFormUploadMasterItem>
      get copyWith => __$SurveyFormUploadMasterItemCopyWithImpl<
          _SurveyFormUploadMasterItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SurveyFormUploadMasterItemToJson(this);
  }
}

abstract class _SurveyFormUploadMasterItem
    implements SurveyFormUploadMasterItem {
  const factory _SurveyFormUploadMasterItem(
      {required String? id,
      @JsonKey(name: 'idform') required String? idForm,
      @JsonKey(name: 'kode') required String? code,
      @JsonKey(name: 'kelengkapan') required String? name,
      required String? type,
      @JsonKey(name: 'formname') required String? formName,
      required int? count,
      @JsonKey(name: 'credate') required DateTime? creDate,
      @JsonKey(name: 'creby') required String? creBy,
      @JsonKey(name: 'moddate') required DateTime? modDate,
      @JsonKey(name: 'modby') required String? modBy,
      required bool? mandatory}) = _$_SurveyFormUploadMasterItem;

  factory _SurveyFormUploadMasterItem.fromJson(Map<String, dynamic> json) =
      _$_SurveyFormUploadMasterItem.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'idform')
  String? get idForm;
  @override
  @JsonKey(name: 'kode')
  String? get code;
  @override
  @JsonKey(name: 'kelengkapan')
  String? get name;
  @override
  String? get type;
  @override
  @JsonKey(name: 'formname')
  String? get formName;
  @override
  int? get count;
  @override
  @JsonKey(name: 'credate')
  DateTime? get creDate;
  @override
  @JsonKey(name: 'creby')
  String? get creBy;
  @override
  @JsonKey(name: 'moddate')
  DateTime? get modDate;
  @override
  @JsonKey(name: 'modby')
  String? get modBy;
  @override
  bool? get mandatory;
  @override
  @JsonKey(ignore: true)
  _$SurveyFormUploadMasterItemCopyWith<_SurveyFormUploadMasterItem>
      get copyWith => throw _privateConstructorUsedError;
}
