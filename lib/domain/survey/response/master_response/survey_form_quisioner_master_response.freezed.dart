// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'survey_form_quisioner_master_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SurveyFormQuisionerMasterResponse _$SurveyFormQuisionerMasterResponseFromJson(
    Map<String, dynamic> json) {
  return _SurveyFormQuisionerMasterResponse.fromJson(json);
}

/// @nodoc
class _$SurveyFormQuisionerMasterResponseTearOff {
  const _$SurveyFormQuisionerMasterResponseTearOff();

  _SurveyFormQuisionerMasterResponse call(
      {required int? status,
      required String? message,
      required List<SurveyFormQuisionerMasterItem> data}) {
    return _SurveyFormQuisionerMasterResponse(
      status: status,
      message: message,
      data: data,
    );
  }

  SurveyFormQuisionerMasterResponse fromJson(Map<String, Object?> json) {
    return SurveyFormQuisionerMasterResponse.fromJson(json);
  }
}

/// @nodoc
const $SurveyFormQuisionerMasterResponse =
    _$SurveyFormQuisionerMasterResponseTearOff();

/// @nodoc
mixin _$SurveyFormQuisionerMasterResponse {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<SurveyFormQuisionerMasterItem> get data =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurveyFormQuisionerMasterResponseCopyWith<SurveyFormQuisionerMasterResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyFormQuisionerMasterResponseCopyWith<$Res> {
  factory $SurveyFormQuisionerMasterResponseCopyWith(
          SurveyFormQuisionerMasterResponse value,
          $Res Function(SurveyFormQuisionerMasterResponse) then) =
      _$SurveyFormQuisionerMasterResponseCopyWithImpl<$Res>;
  $Res call(
      {int? status, String? message, List<SurveyFormQuisionerMasterItem> data});
}

/// @nodoc
class _$SurveyFormQuisionerMasterResponseCopyWithImpl<$Res>
    implements $SurveyFormQuisionerMasterResponseCopyWith<$Res> {
  _$SurveyFormQuisionerMasterResponseCopyWithImpl(this._value, this._then);

  final SurveyFormQuisionerMasterResponse _value;
  // ignore: unused_field
  final $Res Function(SurveyFormQuisionerMasterResponse) _then;

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
              as List<SurveyFormQuisionerMasterItem>,
    ));
  }
}

/// @nodoc
abstract class _$SurveyFormQuisionerMasterResponseCopyWith<$Res>
    implements $SurveyFormQuisionerMasterResponseCopyWith<$Res> {
  factory _$SurveyFormQuisionerMasterResponseCopyWith(
          _SurveyFormQuisionerMasterResponse value,
          $Res Function(_SurveyFormQuisionerMasterResponse) then) =
      __$SurveyFormQuisionerMasterResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? status, String? message, List<SurveyFormQuisionerMasterItem> data});
}

/// @nodoc
class __$SurveyFormQuisionerMasterResponseCopyWithImpl<$Res>
    extends _$SurveyFormQuisionerMasterResponseCopyWithImpl<$Res>
    implements _$SurveyFormQuisionerMasterResponseCopyWith<$Res> {
  __$SurveyFormQuisionerMasterResponseCopyWithImpl(
      _SurveyFormQuisionerMasterResponse _value,
      $Res Function(_SurveyFormQuisionerMasterResponse) _then)
      : super(_value, (v) => _then(v as _SurveyFormQuisionerMasterResponse));

  @override
  _SurveyFormQuisionerMasterResponse get _value =>
      super._value as _SurveyFormQuisionerMasterResponse;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_SurveyFormQuisionerMasterResponse(
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
              as List<SurveyFormQuisionerMasterItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SurveyFormQuisionerMasterResponse
    implements _SurveyFormQuisionerMasterResponse {
  const _$_SurveyFormQuisionerMasterResponse(
      {required this.status, required this.message, required this.data});

  factory _$_SurveyFormQuisionerMasterResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_SurveyFormQuisionerMasterResponseFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final List<SurveyFormQuisionerMasterItem> data;

  @override
  String toString() {
    return 'SurveyFormQuisionerMasterResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SurveyFormQuisionerMasterResponse &&
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
  _$SurveyFormQuisionerMasterResponseCopyWith<
          _SurveyFormQuisionerMasterResponse>
      get copyWith => __$SurveyFormQuisionerMasterResponseCopyWithImpl<
          _SurveyFormQuisionerMasterResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SurveyFormQuisionerMasterResponseToJson(this);
  }
}

abstract class _SurveyFormQuisionerMasterResponse
    implements SurveyFormQuisionerMasterResponse {
  const factory _SurveyFormQuisionerMasterResponse(
          {required int? status,
          required String? message,
          required List<SurveyFormQuisionerMasterItem> data}) =
      _$_SurveyFormQuisionerMasterResponse;

  factory _SurveyFormQuisionerMasterResponse.fromJson(
          Map<String, dynamic> json) =
      _$_SurveyFormQuisionerMasterResponse.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  List<SurveyFormQuisionerMasterItem> get data;
  @override
  @JsonKey(ignore: true)
  _$SurveyFormQuisionerMasterResponseCopyWith<
          _SurveyFormQuisionerMasterResponse>
      get copyWith => throw _privateConstructorUsedError;
}

SurveyFormQuisionerMasterItem _$SurveyFormQuisionerMasterItemFromJson(
    Map<String, dynamic> json) {
  return _SurveyFormQuisionerMasterItem.fromJson(json);
}

/// @nodoc
class _$SurveyFormQuisionerMasterItemTearOff {
  const _$SurveyFormQuisionerMasterItemTearOff();

  _SurveyFormQuisionerMasterItem call(
      {required String? id,
      @JsonKey(name: 'idquisioner') required String? idQuisioner,
      @JsonKey(name: 'idpertanyaan') required String? idQuestion,
      @JsonKey(name: 'pertanyaan') required String? question,
      required int? questionTypeFlag,
      @JsonKey(name: 'credate') required DateTime? creDate,
      @JsonKey(name: 'creby') required String? creBy,
      @JsonKey(name: 'moddate') required DateTime? modDate,
      @JsonKey(name: 'modby') required String? modBy,
      required bool? mandatory}) {
    return _SurveyFormQuisionerMasterItem(
      id: id,
      idQuisioner: idQuisioner,
      idQuestion: idQuestion,
      question: question,
      questionTypeFlag: questionTypeFlag,
      creDate: creDate,
      creBy: creBy,
      modDate: modDate,
      modBy: modBy,
      mandatory: mandatory,
    );
  }

  SurveyFormQuisionerMasterItem fromJson(Map<String, Object?> json) {
    return SurveyFormQuisionerMasterItem.fromJson(json);
  }
}

/// @nodoc
const $SurveyFormQuisionerMasterItem = _$SurveyFormQuisionerMasterItemTearOff();

/// @nodoc
mixin _$SurveyFormQuisionerMasterItem {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'idquisioner')
  String? get idQuisioner => throw _privateConstructorUsedError;
  @JsonKey(name: 'idpertanyaan')
  String? get idQuestion => throw _privateConstructorUsedError;
  @JsonKey(name: 'pertanyaan')
  String? get question => throw _privateConstructorUsedError;
  int? get questionTypeFlag => throw _privateConstructorUsedError;
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
  $SurveyFormQuisionerMasterItemCopyWith<SurveyFormQuisionerMasterItem>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyFormQuisionerMasterItemCopyWith<$Res> {
  factory $SurveyFormQuisionerMasterItemCopyWith(
          SurveyFormQuisionerMasterItem value,
          $Res Function(SurveyFormQuisionerMasterItem) then) =
      _$SurveyFormQuisionerMasterItemCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      @JsonKey(name: 'idquisioner') String? idQuisioner,
      @JsonKey(name: 'idpertanyaan') String? idQuestion,
      @JsonKey(name: 'pertanyaan') String? question,
      int? questionTypeFlag,
      @JsonKey(name: 'credate') DateTime? creDate,
      @JsonKey(name: 'creby') String? creBy,
      @JsonKey(name: 'moddate') DateTime? modDate,
      @JsonKey(name: 'modby') String? modBy,
      bool? mandatory});
}

/// @nodoc
class _$SurveyFormQuisionerMasterItemCopyWithImpl<$Res>
    implements $SurveyFormQuisionerMasterItemCopyWith<$Res> {
  _$SurveyFormQuisionerMasterItemCopyWithImpl(this._value, this._then);

  final SurveyFormQuisionerMasterItem _value;
  // ignore: unused_field
  final $Res Function(SurveyFormQuisionerMasterItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? idQuisioner = freezed,
    Object? idQuestion = freezed,
    Object? question = freezed,
    Object? questionTypeFlag = freezed,
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
      idQuisioner: idQuisioner == freezed
          ? _value.idQuisioner
          : idQuisioner // ignore: cast_nullable_to_non_nullable
              as String?,
      idQuestion: idQuestion == freezed
          ? _value.idQuestion
          : idQuestion // ignore: cast_nullable_to_non_nullable
              as String?,
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      questionTypeFlag: questionTypeFlag == freezed
          ? _value.questionTypeFlag
          : questionTypeFlag // ignore: cast_nullable_to_non_nullable
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
abstract class _$SurveyFormQuisionerMasterItemCopyWith<$Res>
    implements $SurveyFormQuisionerMasterItemCopyWith<$Res> {
  factory _$SurveyFormQuisionerMasterItemCopyWith(
          _SurveyFormQuisionerMasterItem value,
          $Res Function(_SurveyFormQuisionerMasterItem) then) =
      __$SurveyFormQuisionerMasterItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      @JsonKey(name: 'idquisioner') String? idQuisioner,
      @JsonKey(name: 'idpertanyaan') String? idQuestion,
      @JsonKey(name: 'pertanyaan') String? question,
      int? questionTypeFlag,
      @JsonKey(name: 'credate') DateTime? creDate,
      @JsonKey(name: 'creby') String? creBy,
      @JsonKey(name: 'moddate') DateTime? modDate,
      @JsonKey(name: 'modby') String? modBy,
      bool? mandatory});
}

/// @nodoc
class __$SurveyFormQuisionerMasterItemCopyWithImpl<$Res>
    extends _$SurveyFormQuisionerMasterItemCopyWithImpl<$Res>
    implements _$SurveyFormQuisionerMasterItemCopyWith<$Res> {
  __$SurveyFormQuisionerMasterItemCopyWithImpl(
      _SurveyFormQuisionerMasterItem _value,
      $Res Function(_SurveyFormQuisionerMasterItem) _then)
      : super(_value, (v) => _then(v as _SurveyFormQuisionerMasterItem));

  @override
  _SurveyFormQuisionerMasterItem get _value =>
      super._value as _SurveyFormQuisionerMasterItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? idQuisioner = freezed,
    Object? idQuestion = freezed,
    Object? question = freezed,
    Object? questionTypeFlag = freezed,
    Object? creDate = freezed,
    Object? creBy = freezed,
    Object? modDate = freezed,
    Object? modBy = freezed,
    Object? mandatory = freezed,
  }) {
    return _then(_SurveyFormQuisionerMasterItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      idQuisioner: idQuisioner == freezed
          ? _value.idQuisioner
          : idQuisioner // ignore: cast_nullable_to_non_nullable
              as String?,
      idQuestion: idQuestion == freezed
          ? _value.idQuestion
          : idQuestion // ignore: cast_nullable_to_non_nullable
              as String?,
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      questionTypeFlag: questionTypeFlag == freezed
          ? _value.questionTypeFlag
          : questionTypeFlag // ignore: cast_nullable_to_non_nullable
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
class _$_SurveyFormQuisionerMasterItem
    implements _SurveyFormQuisionerMasterItem {
  const _$_SurveyFormQuisionerMasterItem(
      {required this.id,
      @JsonKey(name: 'idquisioner') required this.idQuisioner,
      @JsonKey(name: 'idpertanyaan') required this.idQuestion,
      @JsonKey(name: 'pertanyaan') required this.question,
      required this.questionTypeFlag,
      @JsonKey(name: 'credate') required this.creDate,
      @JsonKey(name: 'creby') required this.creBy,
      @JsonKey(name: 'moddate') required this.modDate,
      @JsonKey(name: 'modby') required this.modBy,
      required this.mandatory});

  factory _$_SurveyFormQuisionerMasterItem.fromJson(
          Map<String, dynamic> json) =>
      _$$_SurveyFormQuisionerMasterItemFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'idquisioner')
  final String? idQuisioner;
  @override
  @JsonKey(name: 'idpertanyaan')
  final String? idQuestion;
  @override
  @JsonKey(name: 'pertanyaan')
  final String? question;
  @override
  final int? questionTypeFlag;
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
    return 'SurveyFormQuisionerMasterItem(id: $id, idQuisioner: $idQuisioner, idQuestion: $idQuestion, question: $question, questionTypeFlag: $questionTypeFlag, creDate: $creDate, creBy: $creBy, modDate: $modDate, modBy: $modBy, mandatory: $mandatory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SurveyFormQuisionerMasterItem &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.idQuisioner, idQuisioner) &&
            const DeepCollectionEquality()
                .equals(other.idQuestion, idQuestion) &&
            const DeepCollectionEquality().equals(other.question, question) &&
            const DeepCollectionEquality()
                .equals(other.questionTypeFlag, questionTypeFlag) &&
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
      const DeepCollectionEquality().hash(idQuisioner),
      const DeepCollectionEquality().hash(idQuestion),
      const DeepCollectionEquality().hash(question),
      const DeepCollectionEquality().hash(questionTypeFlag),
      const DeepCollectionEquality().hash(creDate),
      const DeepCollectionEquality().hash(creBy),
      const DeepCollectionEquality().hash(modDate),
      const DeepCollectionEquality().hash(modBy),
      const DeepCollectionEquality().hash(mandatory));

  @JsonKey(ignore: true)
  @override
  _$SurveyFormQuisionerMasterItemCopyWith<_SurveyFormQuisionerMasterItem>
      get copyWith => __$SurveyFormQuisionerMasterItemCopyWithImpl<
          _SurveyFormQuisionerMasterItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SurveyFormQuisionerMasterItemToJson(this);
  }
}

abstract class _SurveyFormQuisionerMasterItem
    implements SurveyFormQuisionerMasterItem {
  const factory _SurveyFormQuisionerMasterItem(
      {required String? id,
      @JsonKey(name: 'idquisioner') required String? idQuisioner,
      @JsonKey(name: 'idpertanyaan') required String? idQuestion,
      @JsonKey(name: 'pertanyaan') required String? question,
      required int? questionTypeFlag,
      @JsonKey(name: 'credate') required DateTime? creDate,
      @JsonKey(name: 'creby') required String? creBy,
      @JsonKey(name: 'moddate') required DateTime? modDate,
      @JsonKey(name: 'modby') required String? modBy,
      required bool? mandatory}) = _$_SurveyFormQuisionerMasterItem;

  factory _SurveyFormQuisionerMasterItem.fromJson(Map<String, dynamic> json) =
      _$_SurveyFormQuisionerMasterItem.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'idquisioner')
  String? get idQuisioner;
  @override
  @JsonKey(name: 'idpertanyaan')
  String? get idQuestion;
  @override
  @JsonKey(name: 'pertanyaan')
  String? get question;
  @override
  int? get questionTypeFlag;
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
  _$SurveyFormQuisionerMasterItemCopyWith<_SurveyFormQuisionerMasterItem>
      get copyWith => throw _privateConstructorUsedError;
}
