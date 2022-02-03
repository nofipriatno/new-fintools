// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class FormUploadData extends DataClass implements Insertable<FormUploadData> {
  final String id;
  final String idForm;
  final String code;
  final String name;
  final String type;
  final String formName;
  final int count;
  final DateTime creDate;
  final String creBy;
  final DateTime modDate;
  final String modBy;
  final bool mandatory;
  FormUploadData(
      {required this.id,
      required this.idForm,
      required this.code,
      required this.name,
      required this.type,
      required this.formName,
      required this.count,
      required this.creDate,
      required this.creBy,
      required this.modDate,
      required this.modBy,
      required this.mandatory});
  factory FormUploadData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return FormUploadData(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      idForm: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_form'])!,
      code: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}code'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      type: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type'])!,
      formName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}form_name'])!,
      count: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}count'])!,
      creDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cre_date'])!,
      creBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cre_by'])!,
      modDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}mod_date'])!,
      modBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}mod_by'])!,
      mandatory: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}mandatory'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['id_form'] = Variable<String>(idForm);
    map['code'] = Variable<String>(code);
    map['name'] = Variable<String>(name);
    map['type'] = Variable<String>(type);
    map['form_name'] = Variable<String>(formName);
    map['count'] = Variable<int>(count);
    map['cre_date'] = Variable<DateTime>(creDate);
    map['cre_by'] = Variable<String>(creBy);
    map['mod_date'] = Variable<DateTime>(modDate);
    map['mod_by'] = Variable<String>(modBy);
    map['mandatory'] = Variable<bool>(mandatory);
    return map;
  }

  FormUploadCompanion toCompanion(bool nullToAbsent) {
    return FormUploadCompanion(
      id: Value(id),
      idForm: Value(idForm),
      code: Value(code),
      name: Value(name),
      type: Value(type),
      formName: Value(formName),
      count: Value(count),
      creDate: Value(creDate),
      creBy: Value(creBy),
      modDate: Value(modDate),
      modBy: Value(modBy),
      mandatory: Value(mandatory),
    );
  }

  factory FormUploadData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FormUploadData(
      id: serializer.fromJson<String>(json['id']),
      idForm: serializer.fromJson<String>(json['idForm']),
      code: serializer.fromJson<String>(json['code']),
      name: serializer.fromJson<String>(json['name']),
      type: serializer.fromJson<String>(json['type']),
      formName: serializer.fromJson<String>(json['formName']),
      count: serializer.fromJson<int>(json['count']),
      creDate: serializer.fromJson<DateTime>(json['creDate']),
      creBy: serializer.fromJson<String>(json['creBy']),
      modDate: serializer.fromJson<DateTime>(json['modDate']),
      modBy: serializer.fromJson<String>(json['modBy']),
      mandatory: serializer.fromJson<bool>(json['mandatory']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'idForm': serializer.toJson<String>(idForm),
      'code': serializer.toJson<String>(code),
      'name': serializer.toJson<String>(name),
      'type': serializer.toJson<String>(type),
      'formName': serializer.toJson<String>(formName),
      'count': serializer.toJson<int>(count),
      'creDate': serializer.toJson<DateTime>(creDate),
      'creBy': serializer.toJson<String>(creBy),
      'modDate': serializer.toJson<DateTime>(modDate),
      'modBy': serializer.toJson<String>(modBy),
      'mandatory': serializer.toJson<bool>(mandatory),
    };
  }

  FormUploadData copyWith(
          {String? id,
          String? idForm,
          String? code,
          String? name,
          String? type,
          String? formName,
          int? count,
          DateTime? creDate,
          String? creBy,
          DateTime? modDate,
          String? modBy,
          bool? mandatory}) =>
      FormUploadData(
        id: id ?? this.id,
        idForm: idForm ?? this.idForm,
        code: code ?? this.code,
        name: name ?? this.name,
        type: type ?? this.type,
        formName: formName ?? this.formName,
        count: count ?? this.count,
        creDate: creDate ?? this.creDate,
        creBy: creBy ?? this.creBy,
        modDate: modDate ?? this.modDate,
        modBy: modBy ?? this.modBy,
        mandatory: mandatory ?? this.mandatory,
      );
  @override
  String toString() {
    return (StringBuffer('FormUploadData(')
          ..write('id: $id, ')
          ..write('idForm: $idForm, ')
          ..write('code: $code, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('formName: $formName, ')
          ..write('count: $count, ')
          ..write('creDate: $creDate, ')
          ..write('creBy: $creBy, ')
          ..write('modDate: $modDate, ')
          ..write('modBy: $modBy, ')
          ..write('mandatory: $mandatory')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, idForm, code, name, type, formName, count,
      creDate, creBy, modDate, modBy, mandatory);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FormUploadData &&
          other.id == this.id &&
          other.idForm == this.idForm &&
          other.code == this.code &&
          other.name == this.name &&
          other.type == this.type &&
          other.formName == this.formName &&
          other.count == this.count &&
          other.creDate == this.creDate &&
          other.creBy == this.creBy &&
          other.modDate == this.modDate &&
          other.modBy == this.modBy &&
          other.mandatory == this.mandatory);
}

class FormUploadCompanion extends UpdateCompanion<FormUploadData> {
  final Value<String> id;
  final Value<String> idForm;
  final Value<String> code;
  final Value<String> name;
  final Value<String> type;
  final Value<String> formName;
  final Value<int> count;
  final Value<DateTime> creDate;
  final Value<String> creBy;
  final Value<DateTime> modDate;
  final Value<String> modBy;
  final Value<bool> mandatory;
  const FormUploadCompanion({
    this.id = const Value.absent(),
    this.idForm = const Value.absent(),
    this.code = const Value.absent(),
    this.name = const Value.absent(),
    this.type = const Value.absent(),
    this.formName = const Value.absent(),
    this.count = const Value.absent(),
    this.creDate = const Value.absent(),
    this.creBy = const Value.absent(),
    this.modDate = const Value.absent(),
    this.modBy = const Value.absent(),
    this.mandatory = const Value.absent(),
  });
  FormUploadCompanion.insert({
    required String id,
    required String idForm,
    required String code,
    required String name,
    required String type,
    required String formName,
    required int count,
    required DateTime creDate,
    required String creBy,
    required DateTime modDate,
    required String modBy,
    required bool mandatory,
  })  : id = Value(id),
        idForm = Value(idForm),
        code = Value(code),
        name = Value(name),
        type = Value(type),
        formName = Value(formName),
        count = Value(count),
        creDate = Value(creDate),
        creBy = Value(creBy),
        modDate = Value(modDate),
        modBy = Value(modBy),
        mandatory = Value(mandatory);
  static Insertable<FormUploadData> custom({
    Expression<String>? id,
    Expression<String>? idForm,
    Expression<String>? code,
    Expression<String>? name,
    Expression<String>? type,
    Expression<String>? formName,
    Expression<int>? count,
    Expression<DateTime>? creDate,
    Expression<String>? creBy,
    Expression<DateTime>? modDate,
    Expression<String>? modBy,
    Expression<bool>? mandatory,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (idForm != null) 'id_form': idForm,
      if (code != null) 'code': code,
      if (name != null) 'name': name,
      if (type != null) 'type': type,
      if (formName != null) 'form_name': formName,
      if (count != null) 'count': count,
      if (creDate != null) 'cre_date': creDate,
      if (creBy != null) 'cre_by': creBy,
      if (modDate != null) 'mod_date': modDate,
      if (modBy != null) 'mod_by': modBy,
      if (mandatory != null) 'mandatory': mandatory,
    });
  }

  FormUploadCompanion copyWith(
      {Value<String>? id,
      Value<String>? idForm,
      Value<String>? code,
      Value<String>? name,
      Value<String>? type,
      Value<String>? formName,
      Value<int>? count,
      Value<DateTime>? creDate,
      Value<String>? creBy,
      Value<DateTime>? modDate,
      Value<String>? modBy,
      Value<bool>? mandatory}) {
    return FormUploadCompanion(
      id: id ?? this.id,
      idForm: idForm ?? this.idForm,
      code: code ?? this.code,
      name: name ?? this.name,
      type: type ?? this.type,
      formName: formName ?? this.formName,
      count: count ?? this.count,
      creDate: creDate ?? this.creDate,
      creBy: creBy ?? this.creBy,
      modDate: modDate ?? this.modDate,
      modBy: modBy ?? this.modBy,
      mandatory: mandatory ?? this.mandatory,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (idForm.present) {
      map['id_form'] = Variable<String>(idForm.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (formName.present) {
      map['form_name'] = Variable<String>(formName.value);
    }
    if (count.present) {
      map['count'] = Variable<int>(count.value);
    }
    if (creDate.present) {
      map['cre_date'] = Variable<DateTime>(creDate.value);
    }
    if (creBy.present) {
      map['cre_by'] = Variable<String>(creBy.value);
    }
    if (modDate.present) {
      map['mod_date'] = Variable<DateTime>(modDate.value);
    }
    if (modBy.present) {
      map['mod_by'] = Variable<String>(modBy.value);
    }
    if (mandatory.present) {
      map['mandatory'] = Variable<bool>(mandatory.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FormUploadCompanion(')
          ..write('id: $id, ')
          ..write('idForm: $idForm, ')
          ..write('code: $code, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('formName: $formName, ')
          ..write('count: $count, ')
          ..write('creDate: $creDate, ')
          ..write('creBy: $creBy, ')
          ..write('modDate: $modDate, ')
          ..write('modBy: $modBy, ')
          ..write('mandatory: $mandatory')
          ..write(')'))
        .toString();
  }
}

class $FormUploadTable extends FormUpload
    with TableInfo<$FormUploadTable, FormUploadData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $FormUploadTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _idFormMeta = const VerificationMeta('idForm');
  @override
  late final GeneratedColumn<String?> idForm = GeneratedColumn<String?>(
      'id_form', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String?> code = GeneratedColumn<String?>(
      'code', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String?> type = GeneratedColumn<String?>(
      'type', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _formNameMeta = const VerificationMeta('formName');
  @override
  late final GeneratedColumn<String?> formName = GeneratedColumn<String?>(
      'form_name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _countMeta = const VerificationMeta('count');
  @override
  late final GeneratedColumn<int?> count = GeneratedColumn<int?>(
      'count', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _creDateMeta = const VerificationMeta('creDate');
  @override
  late final GeneratedColumn<DateTime?> creDate = GeneratedColumn<DateTime?>(
      'cre_date', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _creByMeta = const VerificationMeta('creBy');
  @override
  late final GeneratedColumn<String?> creBy = GeneratedColumn<String?>(
      'cre_by', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _modDateMeta = const VerificationMeta('modDate');
  @override
  late final GeneratedColumn<DateTime?> modDate = GeneratedColumn<DateTime?>(
      'mod_date', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _modByMeta = const VerificationMeta('modBy');
  @override
  late final GeneratedColumn<String?> modBy = GeneratedColumn<String?>(
      'mod_by', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _mandatoryMeta = const VerificationMeta('mandatory');
  @override
  late final GeneratedColumn<bool?> mandatory = GeneratedColumn<bool?>(
      'mandatory', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (mandatory IN (0, 1))');
  @override
  List<GeneratedColumn> get $columns => [
        id,
        idForm,
        code,
        name,
        type,
        formName,
        count,
        creDate,
        creBy,
        modDate,
        modBy,
        mandatory
      ];
  @override
  String get aliasedName => _alias ?? 'form_upload';
  @override
  String get actualTableName => 'form_upload';
  @override
  VerificationContext validateIntegrity(Insertable<FormUploadData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('id_form')) {
      context.handle(_idFormMeta,
          idForm.isAcceptableOrUnknown(data['id_form']!, _idFormMeta));
    } else if (isInserting) {
      context.missing(_idFormMeta);
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('form_name')) {
      context.handle(_formNameMeta,
          formName.isAcceptableOrUnknown(data['form_name']!, _formNameMeta));
    } else if (isInserting) {
      context.missing(_formNameMeta);
    }
    if (data.containsKey('count')) {
      context.handle(
          _countMeta, count.isAcceptableOrUnknown(data['count']!, _countMeta));
    } else if (isInserting) {
      context.missing(_countMeta);
    }
    if (data.containsKey('cre_date')) {
      context.handle(_creDateMeta,
          creDate.isAcceptableOrUnknown(data['cre_date']!, _creDateMeta));
    } else if (isInserting) {
      context.missing(_creDateMeta);
    }
    if (data.containsKey('cre_by')) {
      context.handle(
          _creByMeta, creBy.isAcceptableOrUnknown(data['cre_by']!, _creByMeta));
    } else if (isInserting) {
      context.missing(_creByMeta);
    }
    if (data.containsKey('mod_date')) {
      context.handle(_modDateMeta,
          modDate.isAcceptableOrUnknown(data['mod_date']!, _modDateMeta));
    } else if (isInserting) {
      context.missing(_modDateMeta);
    }
    if (data.containsKey('mod_by')) {
      context.handle(
          _modByMeta, modBy.isAcceptableOrUnknown(data['mod_by']!, _modByMeta));
    } else if (isInserting) {
      context.missing(_modByMeta);
    }
    if (data.containsKey('mandatory')) {
      context.handle(_mandatoryMeta,
          mandatory.isAcceptableOrUnknown(data['mandatory']!, _mandatoryMeta));
    } else if (isInserting) {
      context.missing(_mandatoryMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FormUploadData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return FormUploadData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $FormUploadTable createAlias(String alias) {
    return $FormUploadTable(_db, alias);
  }
}

class FormQuisionerData extends DataClass
    implements Insertable<FormQuisionerData> {
  final String id;
  final String idQuisioner;
  final String idQuestion;
  final String question;
  final int questionTypeFlag;
  final DateTime creDate;
  final String creBy;
  final DateTime modDate;
  final String modBy;
  final bool mandatory;
  FormQuisionerData(
      {required this.id,
      required this.idQuisioner,
      required this.idQuestion,
      required this.question,
      required this.questionTypeFlag,
      required this.creDate,
      required this.creBy,
      required this.modDate,
      required this.modBy,
      required this.mandatory});
  factory FormQuisionerData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return FormQuisionerData(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      idQuisioner: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_quisioner'])!,
      idQuestion: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_question'])!,
      question: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}question'])!,
      questionTypeFlag: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}question_type_flag'])!,
      creDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cre_date'])!,
      creBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cre_by'])!,
      modDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}mod_date'])!,
      modBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}mod_by'])!,
      mandatory: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}mandatory'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['id_quisioner'] = Variable<String>(idQuisioner);
    map['id_question'] = Variable<String>(idQuestion);
    map['question'] = Variable<String>(question);
    map['question_type_flag'] = Variable<int>(questionTypeFlag);
    map['cre_date'] = Variable<DateTime>(creDate);
    map['cre_by'] = Variable<String>(creBy);
    map['mod_date'] = Variable<DateTime>(modDate);
    map['mod_by'] = Variable<String>(modBy);
    map['mandatory'] = Variable<bool>(mandatory);
    return map;
  }

  FormQuisionerCompanion toCompanion(bool nullToAbsent) {
    return FormQuisionerCompanion(
      id: Value(id),
      idQuisioner: Value(idQuisioner),
      idQuestion: Value(idQuestion),
      question: Value(question),
      questionTypeFlag: Value(questionTypeFlag),
      creDate: Value(creDate),
      creBy: Value(creBy),
      modDate: Value(modDate),
      modBy: Value(modBy),
      mandatory: Value(mandatory),
    );
  }

  factory FormQuisionerData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FormQuisionerData(
      id: serializer.fromJson<String>(json['id']),
      idQuisioner: serializer.fromJson<String>(json['idQuisioner']),
      idQuestion: serializer.fromJson<String>(json['idQuestion']),
      question: serializer.fromJson<String>(json['question']),
      questionTypeFlag: serializer.fromJson<int>(json['questionTypeFlag']),
      creDate: serializer.fromJson<DateTime>(json['creDate']),
      creBy: serializer.fromJson<String>(json['creBy']),
      modDate: serializer.fromJson<DateTime>(json['modDate']),
      modBy: serializer.fromJson<String>(json['modBy']),
      mandatory: serializer.fromJson<bool>(json['mandatory']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'idQuisioner': serializer.toJson<String>(idQuisioner),
      'idQuestion': serializer.toJson<String>(idQuestion),
      'question': serializer.toJson<String>(question),
      'questionTypeFlag': serializer.toJson<int>(questionTypeFlag),
      'creDate': serializer.toJson<DateTime>(creDate),
      'creBy': serializer.toJson<String>(creBy),
      'modDate': serializer.toJson<DateTime>(modDate),
      'modBy': serializer.toJson<String>(modBy),
      'mandatory': serializer.toJson<bool>(mandatory),
    };
  }

  FormQuisionerData copyWith(
          {String? id,
          String? idQuisioner,
          String? idQuestion,
          String? question,
          int? questionTypeFlag,
          DateTime? creDate,
          String? creBy,
          DateTime? modDate,
          String? modBy,
          bool? mandatory}) =>
      FormQuisionerData(
        id: id ?? this.id,
        idQuisioner: idQuisioner ?? this.idQuisioner,
        idQuestion: idQuestion ?? this.idQuestion,
        question: question ?? this.question,
        questionTypeFlag: questionTypeFlag ?? this.questionTypeFlag,
        creDate: creDate ?? this.creDate,
        creBy: creBy ?? this.creBy,
        modDate: modDate ?? this.modDate,
        modBy: modBy ?? this.modBy,
        mandatory: mandatory ?? this.mandatory,
      );
  @override
  String toString() {
    return (StringBuffer('FormQuisionerData(')
          ..write('id: $id, ')
          ..write('idQuisioner: $idQuisioner, ')
          ..write('idQuestion: $idQuestion, ')
          ..write('question: $question, ')
          ..write('questionTypeFlag: $questionTypeFlag, ')
          ..write('creDate: $creDate, ')
          ..write('creBy: $creBy, ')
          ..write('modDate: $modDate, ')
          ..write('modBy: $modBy, ')
          ..write('mandatory: $mandatory')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, idQuisioner, idQuestion, question,
      questionTypeFlag, creDate, creBy, modDate, modBy, mandatory);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FormQuisionerData &&
          other.id == this.id &&
          other.idQuisioner == this.idQuisioner &&
          other.idQuestion == this.idQuestion &&
          other.question == this.question &&
          other.questionTypeFlag == this.questionTypeFlag &&
          other.creDate == this.creDate &&
          other.creBy == this.creBy &&
          other.modDate == this.modDate &&
          other.modBy == this.modBy &&
          other.mandatory == this.mandatory);
}

class FormQuisionerCompanion extends UpdateCompanion<FormQuisionerData> {
  final Value<String> id;
  final Value<String> idQuisioner;
  final Value<String> idQuestion;
  final Value<String> question;
  final Value<int> questionTypeFlag;
  final Value<DateTime> creDate;
  final Value<String> creBy;
  final Value<DateTime> modDate;
  final Value<String> modBy;
  final Value<bool> mandatory;
  const FormQuisionerCompanion({
    this.id = const Value.absent(),
    this.idQuisioner = const Value.absent(),
    this.idQuestion = const Value.absent(),
    this.question = const Value.absent(),
    this.questionTypeFlag = const Value.absent(),
    this.creDate = const Value.absent(),
    this.creBy = const Value.absent(),
    this.modDate = const Value.absent(),
    this.modBy = const Value.absent(),
    this.mandatory = const Value.absent(),
  });
  FormQuisionerCompanion.insert({
    required String id,
    required String idQuisioner,
    required String idQuestion,
    required String question,
    required int questionTypeFlag,
    required DateTime creDate,
    required String creBy,
    required DateTime modDate,
    required String modBy,
    required bool mandatory,
  })  : id = Value(id),
        idQuisioner = Value(idQuisioner),
        idQuestion = Value(idQuestion),
        question = Value(question),
        questionTypeFlag = Value(questionTypeFlag),
        creDate = Value(creDate),
        creBy = Value(creBy),
        modDate = Value(modDate),
        modBy = Value(modBy),
        mandatory = Value(mandatory);
  static Insertable<FormQuisionerData> custom({
    Expression<String>? id,
    Expression<String>? idQuisioner,
    Expression<String>? idQuestion,
    Expression<String>? question,
    Expression<int>? questionTypeFlag,
    Expression<DateTime>? creDate,
    Expression<String>? creBy,
    Expression<DateTime>? modDate,
    Expression<String>? modBy,
    Expression<bool>? mandatory,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (idQuisioner != null) 'id_quisioner': idQuisioner,
      if (idQuestion != null) 'id_question': idQuestion,
      if (question != null) 'question': question,
      if (questionTypeFlag != null) 'question_type_flag': questionTypeFlag,
      if (creDate != null) 'cre_date': creDate,
      if (creBy != null) 'cre_by': creBy,
      if (modDate != null) 'mod_date': modDate,
      if (modBy != null) 'mod_by': modBy,
      if (mandatory != null) 'mandatory': mandatory,
    });
  }

  FormQuisionerCompanion copyWith(
      {Value<String>? id,
      Value<String>? idQuisioner,
      Value<String>? idQuestion,
      Value<String>? question,
      Value<int>? questionTypeFlag,
      Value<DateTime>? creDate,
      Value<String>? creBy,
      Value<DateTime>? modDate,
      Value<String>? modBy,
      Value<bool>? mandatory}) {
    return FormQuisionerCompanion(
      id: id ?? this.id,
      idQuisioner: idQuisioner ?? this.idQuisioner,
      idQuestion: idQuestion ?? this.idQuestion,
      question: question ?? this.question,
      questionTypeFlag: questionTypeFlag ?? this.questionTypeFlag,
      creDate: creDate ?? this.creDate,
      creBy: creBy ?? this.creBy,
      modDate: modDate ?? this.modDate,
      modBy: modBy ?? this.modBy,
      mandatory: mandatory ?? this.mandatory,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (idQuisioner.present) {
      map['id_quisioner'] = Variable<String>(idQuisioner.value);
    }
    if (idQuestion.present) {
      map['id_question'] = Variable<String>(idQuestion.value);
    }
    if (question.present) {
      map['question'] = Variable<String>(question.value);
    }
    if (questionTypeFlag.present) {
      map['question_type_flag'] = Variable<int>(questionTypeFlag.value);
    }
    if (creDate.present) {
      map['cre_date'] = Variable<DateTime>(creDate.value);
    }
    if (creBy.present) {
      map['cre_by'] = Variable<String>(creBy.value);
    }
    if (modDate.present) {
      map['mod_date'] = Variable<DateTime>(modDate.value);
    }
    if (modBy.present) {
      map['mod_by'] = Variable<String>(modBy.value);
    }
    if (mandatory.present) {
      map['mandatory'] = Variable<bool>(mandatory.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FormQuisionerCompanion(')
          ..write('id: $id, ')
          ..write('idQuisioner: $idQuisioner, ')
          ..write('idQuestion: $idQuestion, ')
          ..write('question: $question, ')
          ..write('questionTypeFlag: $questionTypeFlag, ')
          ..write('creDate: $creDate, ')
          ..write('creBy: $creBy, ')
          ..write('modDate: $modDate, ')
          ..write('modBy: $modBy, ')
          ..write('mandatory: $mandatory')
          ..write(')'))
        .toString();
  }
}

class $FormQuisionerTable extends FormQuisioner
    with TableInfo<$FormQuisionerTable, FormQuisionerData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $FormQuisionerTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _idQuisionerMeta =
      const VerificationMeta('idQuisioner');
  @override
  late final GeneratedColumn<String?> idQuisioner = GeneratedColumn<String?>(
      'id_quisioner', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _idQuestionMeta = const VerificationMeta('idQuestion');
  @override
  late final GeneratedColumn<String?> idQuestion = GeneratedColumn<String?>(
      'id_question', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _questionMeta = const VerificationMeta('question');
  @override
  late final GeneratedColumn<String?> question = GeneratedColumn<String?>(
      'question', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _questionTypeFlagMeta =
      const VerificationMeta('questionTypeFlag');
  @override
  late final GeneratedColumn<int?> questionTypeFlag = GeneratedColumn<int?>(
      'question_type_flag', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _creDateMeta = const VerificationMeta('creDate');
  @override
  late final GeneratedColumn<DateTime?> creDate = GeneratedColumn<DateTime?>(
      'cre_date', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _creByMeta = const VerificationMeta('creBy');
  @override
  late final GeneratedColumn<String?> creBy = GeneratedColumn<String?>(
      'cre_by', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _modDateMeta = const VerificationMeta('modDate');
  @override
  late final GeneratedColumn<DateTime?> modDate = GeneratedColumn<DateTime?>(
      'mod_date', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _modByMeta = const VerificationMeta('modBy');
  @override
  late final GeneratedColumn<String?> modBy = GeneratedColumn<String?>(
      'mod_by', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _mandatoryMeta = const VerificationMeta('mandatory');
  @override
  late final GeneratedColumn<bool?> mandatory = GeneratedColumn<bool?>(
      'mandatory', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (mandatory IN (0, 1))');
  @override
  List<GeneratedColumn> get $columns => [
        id,
        idQuisioner,
        idQuestion,
        question,
        questionTypeFlag,
        creDate,
        creBy,
        modDate,
        modBy,
        mandatory
      ];
  @override
  String get aliasedName => _alias ?? 'form_quisioner';
  @override
  String get actualTableName => 'form_quisioner';
  @override
  VerificationContext validateIntegrity(Insertable<FormQuisionerData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('id_quisioner')) {
      context.handle(
          _idQuisionerMeta,
          idQuisioner.isAcceptableOrUnknown(
              data['id_quisioner']!, _idQuisionerMeta));
    } else if (isInserting) {
      context.missing(_idQuisionerMeta);
    }
    if (data.containsKey('id_question')) {
      context.handle(
          _idQuestionMeta,
          idQuestion.isAcceptableOrUnknown(
              data['id_question']!, _idQuestionMeta));
    } else if (isInserting) {
      context.missing(_idQuestionMeta);
    }
    if (data.containsKey('question')) {
      context.handle(_questionMeta,
          question.isAcceptableOrUnknown(data['question']!, _questionMeta));
    } else if (isInserting) {
      context.missing(_questionMeta);
    }
    if (data.containsKey('question_type_flag')) {
      context.handle(
          _questionTypeFlagMeta,
          questionTypeFlag.isAcceptableOrUnknown(
              data['question_type_flag']!, _questionTypeFlagMeta));
    } else if (isInserting) {
      context.missing(_questionTypeFlagMeta);
    }
    if (data.containsKey('cre_date')) {
      context.handle(_creDateMeta,
          creDate.isAcceptableOrUnknown(data['cre_date']!, _creDateMeta));
    } else if (isInserting) {
      context.missing(_creDateMeta);
    }
    if (data.containsKey('cre_by')) {
      context.handle(
          _creByMeta, creBy.isAcceptableOrUnknown(data['cre_by']!, _creByMeta));
    } else if (isInserting) {
      context.missing(_creByMeta);
    }
    if (data.containsKey('mod_date')) {
      context.handle(_modDateMeta,
          modDate.isAcceptableOrUnknown(data['mod_date']!, _modDateMeta));
    } else if (isInserting) {
      context.missing(_modDateMeta);
    }
    if (data.containsKey('mod_by')) {
      context.handle(
          _modByMeta, modBy.isAcceptableOrUnknown(data['mod_by']!, _modByMeta));
    } else if (isInserting) {
      context.missing(_modByMeta);
    }
    if (data.containsKey('mandatory')) {
      context.handle(_mandatoryMeta,
          mandatory.isAcceptableOrUnknown(data['mandatory']!, _mandatoryMeta));
    } else if (isInserting) {
      context.missing(_mandatoryMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FormQuisionerData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return FormQuisionerData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $FormQuisionerTable createAlias(String alias) {
    return $FormQuisionerTable(_db, alias);
  }
}

class ZipcodeData extends DataClass implements Insertable<ZipcodeData> {
  final int id;
  final String city;
  final String subDistrict;
  final String district;
  final String postCode;
  final String billArea;
  ZipcodeData(
      {required this.id,
      required this.city,
      required this.subDistrict,
      required this.district,
      required this.postCode,
      required this.billArea});
  factory ZipcodeData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ZipcodeData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      city: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}city'])!,
      subDistrict: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sub_district'])!,
      district: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}district'])!,
      postCode: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}post_code'])!,
      billArea: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}bill_area'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['city'] = Variable<String>(city);
    map['sub_district'] = Variable<String>(subDistrict);
    map['district'] = Variable<String>(district);
    map['post_code'] = Variable<String>(postCode);
    map['bill_area'] = Variable<String>(billArea);
    return map;
  }

  ZipcodeCompanion toCompanion(bool nullToAbsent) {
    return ZipcodeCompanion(
      id: Value(id),
      city: Value(city),
      subDistrict: Value(subDistrict),
      district: Value(district),
      postCode: Value(postCode),
      billArea: Value(billArea),
    );
  }

  factory ZipcodeData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ZipcodeData(
      id: serializer.fromJson<int>(json['id']),
      city: serializer.fromJson<String>(json['city']),
      subDistrict: serializer.fromJson<String>(json['subDistrict']),
      district: serializer.fromJson<String>(json['district']),
      postCode: serializer.fromJson<String>(json['postCode']),
      billArea: serializer.fromJson<String>(json['billArea']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'city': serializer.toJson<String>(city),
      'subDistrict': serializer.toJson<String>(subDistrict),
      'district': serializer.toJson<String>(district),
      'postCode': serializer.toJson<String>(postCode),
      'billArea': serializer.toJson<String>(billArea),
    };
  }

  ZipcodeData copyWith(
          {int? id,
          String? city,
          String? subDistrict,
          String? district,
          String? postCode,
          String? billArea}) =>
      ZipcodeData(
        id: id ?? this.id,
        city: city ?? this.city,
        subDistrict: subDistrict ?? this.subDistrict,
        district: district ?? this.district,
        postCode: postCode ?? this.postCode,
        billArea: billArea ?? this.billArea,
      );
  @override
  String toString() {
    return (StringBuffer('ZipcodeData(')
          ..write('id: $id, ')
          ..write('city: $city, ')
          ..write('subDistrict: $subDistrict, ')
          ..write('district: $district, ')
          ..write('postCode: $postCode, ')
          ..write('billArea: $billArea')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, city, subDistrict, district, postCode, billArea);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ZipcodeData &&
          other.id == this.id &&
          other.city == this.city &&
          other.subDistrict == this.subDistrict &&
          other.district == this.district &&
          other.postCode == this.postCode &&
          other.billArea == this.billArea);
}

class ZipcodeCompanion extends UpdateCompanion<ZipcodeData> {
  final Value<int> id;
  final Value<String> city;
  final Value<String> subDistrict;
  final Value<String> district;
  final Value<String> postCode;
  final Value<String> billArea;
  const ZipcodeCompanion({
    this.id = const Value.absent(),
    this.city = const Value.absent(),
    this.subDistrict = const Value.absent(),
    this.district = const Value.absent(),
    this.postCode = const Value.absent(),
    this.billArea = const Value.absent(),
  });
  ZipcodeCompanion.insert({
    this.id = const Value.absent(),
    required String city,
    required String subDistrict,
    required String district,
    required String postCode,
    required String billArea,
  })  : city = Value(city),
        subDistrict = Value(subDistrict),
        district = Value(district),
        postCode = Value(postCode),
        billArea = Value(billArea);
  static Insertable<ZipcodeData> custom({
    Expression<int>? id,
    Expression<String>? city,
    Expression<String>? subDistrict,
    Expression<String>? district,
    Expression<String>? postCode,
    Expression<String>? billArea,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (city != null) 'city': city,
      if (subDistrict != null) 'sub_district': subDistrict,
      if (district != null) 'district': district,
      if (postCode != null) 'post_code': postCode,
      if (billArea != null) 'bill_area': billArea,
    });
  }

  ZipcodeCompanion copyWith(
      {Value<int>? id,
      Value<String>? city,
      Value<String>? subDistrict,
      Value<String>? district,
      Value<String>? postCode,
      Value<String>? billArea}) {
    return ZipcodeCompanion(
      id: id ?? this.id,
      city: city ?? this.city,
      subDistrict: subDistrict ?? this.subDistrict,
      district: district ?? this.district,
      postCode: postCode ?? this.postCode,
      billArea: billArea ?? this.billArea,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (city.present) {
      map['city'] = Variable<String>(city.value);
    }
    if (subDistrict.present) {
      map['sub_district'] = Variable<String>(subDistrict.value);
    }
    if (district.present) {
      map['district'] = Variable<String>(district.value);
    }
    if (postCode.present) {
      map['post_code'] = Variable<String>(postCode.value);
    }
    if (billArea.present) {
      map['bill_area'] = Variable<String>(billArea.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ZipcodeCompanion(')
          ..write('id: $id, ')
          ..write('city: $city, ')
          ..write('subDistrict: $subDistrict, ')
          ..write('district: $district, ')
          ..write('postCode: $postCode, ')
          ..write('billArea: $billArea')
          ..write(')'))
        .toString();
  }
}

class $ZipcodeTable extends Zipcode with TableInfo<$ZipcodeTable, ZipcodeData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $ZipcodeTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _cityMeta = const VerificationMeta('city');
  @override
  late final GeneratedColumn<String?> city = GeneratedColumn<String?>(
      'city', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _subDistrictMeta =
      const VerificationMeta('subDistrict');
  @override
  late final GeneratedColumn<String?> subDistrict = GeneratedColumn<String?>(
      'sub_district', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _districtMeta = const VerificationMeta('district');
  @override
  late final GeneratedColumn<String?> district = GeneratedColumn<String?>(
      'district', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _postCodeMeta = const VerificationMeta('postCode');
  @override
  late final GeneratedColumn<String?> postCode = GeneratedColumn<String?>(
      'post_code', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _billAreaMeta = const VerificationMeta('billArea');
  @override
  late final GeneratedColumn<String?> billArea = GeneratedColumn<String?>(
      'bill_area', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, city, subDistrict, district, postCode, billArea];
  @override
  String get aliasedName => _alias ?? 'zipcode';
  @override
  String get actualTableName => 'zipcode';
  @override
  VerificationContext validateIntegrity(Insertable<ZipcodeData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('city')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['city']!, _cityMeta));
    } else if (isInserting) {
      context.missing(_cityMeta);
    }
    if (data.containsKey('sub_district')) {
      context.handle(
          _subDistrictMeta,
          subDistrict.isAcceptableOrUnknown(
              data['sub_district']!, _subDistrictMeta));
    } else if (isInserting) {
      context.missing(_subDistrictMeta);
    }
    if (data.containsKey('district')) {
      context.handle(_districtMeta,
          district.isAcceptableOrUnknown(data['district']!, _districtMeta));
    } else if (isInserting) {
      context.missing(_districtMeta);
    }
    if (data.containsKey('post_code')) {
      context.handle(_postCodeMeta,
          postCode.isAcceptableOrUnknown(data['post_code']!, _postCodeMeta));
    } else if (isInserting) {
      context.missing(_postCodeMeta);
    }
    if (data.containsKey('bill_area')) {
      context.handle(_billAreaMeta,
          billArea.isAcceptableOrUnknown(data['bill_area']!, _billAreaMeta));
    } else if (isInserting) {
      context.missing(_billAreaMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ZipcodeData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ZipcodeData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ZipcodeTable createAlias(String alias) {
    return $ZipcodeTable(_db, alias);
  }
}

class SurveyTaskQueueData extends DataClass
    implements Insertable<SurveyTaskQueueData> {
  final String taskId;
  final String nik;
  final String name;
  final String platNumber;
  final int isPush;
  final DateTime creDate;
  final String latitude;
  final String longitude;
  final DateTime localCreate;
  final String address;
  SurveyTaskQueueData(
      {required this.taskId,
      required this.nik,
      required this.name,
      required this.platNumber,
      required this.isPush,
      required this.creDate,
      required this.latitude,
      required this.longitude,
      required this.localCreate,
      required this.address});
  factory SurveyTaskQueueData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return SurveyTaskQueueData(
      taskId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}task_id'])!,
      nik: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}nik'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      platNumber: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}plat_number'])!,
      isPush: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_push'])!,
      creDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cre_date'])!,
      latitude: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}latitude'])!,
      longitude: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}longitude'])!,
      localCreate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}local_create'])!,
      address: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}address'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['task_id'] = Variable<String>(taskId);
    map['nik'] = Variable<String>(nik);
    map['name'] = Variable<String>(name);
    map['plat_number'] = Variable<String>(platNumber);
    map['is_push'] = Variable<int>(isPush);
    map['cre_date'] = Variable<DateTime>(creDate);
    map['latitude'] = Variable<String>(latitude);
    map['longitude'] = Variable<String>(longitude);
    map['local_create'] = Variable<DateTime>(localCreate);
    map['address'] = Variable<String>(address);
    return map;
  }

  SurveyTaskQueueCompanion toCompanion(bool nullToAbsent) {
    return SurveyTaskQueueCompanion(
      taskId: Value(taskId),
      nik: Value(nik),
      name: Value(name),
      platNumber: Value(platNumber),
      isPush: Value(isPush),
      creDate: Value(creDate),
      latitude: Value(latitude),
      longitude: Value(longitude),
      localCreate: Value(localCreate),
      address: Value(address),
    );
  }

  factory SurveyTaskQueueData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SurveyTaskQueueData(
      taskId: serializer.fromJson<String>(json['taskId']),
      nik: serializer.fromJson<String>(json['nik']),
      name: serializer.fromJson<String>(json['name']),
      platNumber: serializer.fromJson<String>(json['platNumber']),
      isPush: serializer.fromJson<int>(json['isPush']),
      creDate: serializer.fromJson<DateTime>(json['creDate']),
      latitude: serializer.fromJson<String>(json['latitude']),
      longitude: serializer.fromJson<String>(json['longitude']),
      localCreate: serializer.fromJson<DateTime>(json['localCreate']),
      address: serializer.fromJson<String>(json['address']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'taskId': serializer.toJson<String>(taskId),
      'nik': serializer.toJson<String>(nik),
      'name': serializer.toJson<String>(name),
      'platNumber': serializer.toJson<String>(platNumber),
      'isPush': serializer.toJson<int>(isPush),
      'creDate': serializer.toJson<DateTime>(creDate),
      'latitude': serializer.toJson<String>(latitude),
      'longitude': serializer.toJson<String>(longitude),
      'localCreate': serializer.toJson<DateTime>(localCreate),
      'address': serializer.toJson<String>(address),
    };
  }

  SurveyTaskQueueData copyWith(
          {String? taskId,
          String? nik,
          String? name,
          String? platNumber,
          int? isPush,
          DateTime? creDate,
          String? latitude,
          String? longitude,
          DateTime? localCreate,
          String? address}) =>
      SurveyTaskQueueData(
        taskId: taskId ?? this.taskId,
        nik: nik ?? this.nik,
        name: name ?? this.name,
        platNumber: platNumber ?? this.platNumber,
        isPush: isPush ?? this.isPush,
        creDate: creDate ?? this.creDate,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        localCreate: localCreate ?? this.localCreate,
        address: address ?? this.address,
      );
  @override
  String toString() {
    return (StringBuffer('SurveyTaskQueueData(')
          ..write('taskId: $taskId, ')
          ..write('nik: $nik, ')
          ..write('name: $name, ')
          ..write('platNumber: $platNumber, ')
          ..write('isPush: $isPush, ')
          ..write('creDate: $creDate, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('localCreate: $localCreate, ')
          ..write('address: $address')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(taskId, nik, name, platNumber, isPush,
      creDate, latitude, longitude, localCreate, address);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SurveyTaskQueueData &&
          other.taskId == this.taskId &&
          other.nik == this.nik &&
          other.name == this.name &&
          other.platNumber == this.platNumber &&
          other.isPush == this.isPush &&
          other.creDate == this.creDate &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude &&
          other.localCreate == this.localCreate &&
          other.address == this.address);
}

class SurveyTaskQueueCompanion extends UpdateCompanion<SurveyTaskQueueData> {
  final Value<String> taskId;
  final Value<String> nik;
  final Value<String> name;
  final Value<String> platNumber;
  final Value<int> isPush;
  final Value<DateTime> creDate;
  final Value<String> latitude;
  final Value<String> longitude;
  final Value<DateTime> localCreate;
  final Value<String> address;
  const SurveyTaskQueueCompanion({
    this.taskId = const Value.absent(),
    this.nik = const Value.absent(),
    this.name = const Value.absent(),
    this.platNumber = const Value.absent(),
    this.isPush = const Value.absent(),
    this.creDate = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.localCreate = const Value.absent(),
    this.address = const Value.absent(),
  });
  SurveyTaskQueueCompanion.insert({
    required String taskId,
    required String nik,
    required String name,
    required String platNumber,
    required int isPush,
    required DateTime creDate,
    required String latitude,
    required String longitude,
    required DateTime localCreate,
    required String address,
  })  : taskId = Value(taskId),
        nik = Value(nik),
        name = Value(name),
        platNumber = Value(platNumber),
        isPush = Value(isPush),
        creDate = Value(creDate),
        latitude = Value(latitude),
        longitude = Value(longitude),
        localCreate = Value(localCreate),
        address = Value(address);
  static Insertable<SurveyTaskQueueData> custom({
    Expression<String>? taskId,
    Expression<String>? nik,
    Expression<String>? name,
    Expression<String>? platNumber,
    Expression<int>? isPush,
    Expression<DateTime>? creDate,
    Expression<String>? latitude,
    Expression<String>? longitude,
    Expression<DateTime>? localCreate,
    Expression<String>? address,
  }) {
    return RawValuesInsertable({
      if (taskId != null) 'task_id': taskId,
      if (nik != null) 'nik': nik,
      if (name != null) 'name': name,
      if (platNumber != null) 'plat_number': platNumber,
      if (isPush != null) 'is_push': isPush,
      if (creDate != null) 'cre_date': creDate,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (localCreate != null) 'local_create': localCreate,
      if (address != null) 'address': address,
    });
  }

  SurveyTaskQueueCompanion copyWith(
      {Value<String>? taskId,
      Value<String>? nik,
      Value<String>? name,
      Value<String>? platNumber,
      Value<int>? isPush,
      Value<DateTime>? creDate,
      Value<String>? latitude,
      Value<String>? longitude,
      Value<DateTime>? localCreate,
      Value<String>? address}) {
    return SurveyTaskQueueCompanion(
      taskId: taskId ?? this.taskId,
      nik: nik ?? this.nik,
      name: name ?? this.name,
      platNumber: platNumber ?? this.platNumber,
      isPush: isPush ?? this.isPush,
      creDate: creDate ?? this.creDate,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      localCreate: localCreate ?? this.localCreate,
      address: address ?? this.address,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (taskId.present) {
      map['task_id'] = Variable<String>(taskId.value);
    }
    if (nik.present) {
      map['nik'] = Variable<String>(nik.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (platNumber.present) {
      map['plat_number'] = Variable<String>(platNumber.value);
    }
    if (isPush.present) {
      map['is_push'] = Variable<int>(isPush.value);
    }
    if (creDate.present) {
      map['cre_date'] = Variable<DateTime>(creDate.value);
    }
    if (latitude.present) {
      map['latitude'] = Variable<String>(latitude.value);
    }
    if (longitude.present) {
      map['longitude'] = Variable<String>(longitude.value);
    }
    if (localCreate.present) {
      map['local_create'] = Variable<DateTime>(localCreate.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SurveyTaskQueueCompanion(')
          ..write('taskId: $taskId, ')
          ..write('nik: $nik, ')
          ..write('name: $name, ')
          ..write('platNumber: $platNumber, ')
          ..write('isPush: $isPush, ')
          ..write('creDate: $creDate, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('localCreate: $localCreate, ')
          ..write('address: $address')
          ..write(')'))
        .toString();
  }
}

class $SurveyTaskQueueTable extends SurveyTaskQueue
    with TableInfo<$SurveyTaskQueueTable, SurveyTaskQueueData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $SurveyTaskQueueTable(this._db, [this._alias]);
  final VerificationMeta _taskIdMeta = const VerificationMeta('taskId');
  @override
  late final GeneratedColumn<String?> taskId = GeneratedColumn<String?>(
      'task_id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _nikMeta = const VerificationMeta('nik');
  @override
  late final GeneratedColumn<String?> nik = GeneratedColumn<String?>(
      'nik', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _platNumberMeta = const VerificationMeta('platNumber');
  @override
  late final GeneratedColumn<String?> platNumber = GeneratedColumn<String?>(
      'plat_number', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _isPushMeta = const VerificationMeta('isPush');
  @override
  late final GeneratedColumn<int?> isPush = GeneratedColumn<int?>(
      'is_push', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _creDateMeta = const VerificationMeta('creDate');
  @override
  late final GeneratedColumn<DateTime?> creDate = GeneratedColumn<DateTime?>(
      'cre_date', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _latitudeMeta = const VerificationMeta('latitude');
  @override
  late final GeneratedColumn<String?> latitude = GeneratedColumn<String?>(
      'latitude', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _longitudeMeta = const VerificationMeta('longitude');
  @override
  late final GeneratedColumn<String?> longitude = GeneratedColumn<String?>(
      'longitude', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _localCreateMeta =
      const VerificationMeta('localCreate');
  @override
  late final GeneratedColumn<DateTime?> localCreate =
      GeneratedColumn<DateTime?>('local_create', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _addressMeta = const VerificationMeta('address');
  @override
  late final GeneratedColumn<String?> address = GeneratedColumn<String?>(
      'address', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        taskId,
        nik,
        name,
        platNumber,
        isPush,
        creDate,
        latitude,
        longitude,
        localCreate,
        address
      ];
  @override
  String get aliasedName => _alias ?? 'survey_task_queue';
  @override
  String get actualTableName => 'survey_task_queue';
  @override
  VerificationContext validateIntegrity(
      Insertable<SurveyTaskQueueData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('task_id')) {
      context.handle(_taskIdMeta,
          taskId.isAcceptableOrUnknown(data['task_id']!, _taskIdMeta));
    } else if (isInserting) {
      context.missing(_taskIdMeta);
    }
    if (data.containsKey('nik')) {
      context.handle(
          _nikMeta, nik.isAcceptableOrUnknown(data['nik']!, _nikMeta));
    } else if (isInserting) {
      context.missing(_nikMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('plat_number')) {
      context.handle(
          _platNumberMeta,
          platNumber.isAcceptableOrUnknown(
              data['plat_number']!, _platNumberMeta));
    } else if (isInserting) {
      context.missing(_platNumberMeta);
    }
    if (data.containsKey('is_push')) {
      context.handle(_isPushMeta,
          isPush.isAcceptableOrUnknown(data['is_push']!, _isPushMeta));
    } else if (isInserting) {
      context.missing(_isPushMeta);
    }
    if (data.containsKey('cre_date')) {
      context.handle(_creDateMeta,
          creDate.isAcceptableOrUnknown(data['cre_date']!, _creDateMeta));
    } else if (isInserting) {
      context.missing(_creDateMeta);
    }
    if (data.containsKey('latitude')) {
      context.handle(_latitudeMeta,
          latitude.isAcceptableOrUnknown(data['latitude']!, _latitudeMeta));
    } else if (isInserting) {
      context.missing(_latitudeMeta);
    }
    if (data.containsKey('longitude')) {
      context.handle(_longitudeMeta,
          longitude.isAcceptableOrUnknown(data['longitude']!, _longitudeMeta));
    } else if (isInserting) {
      context.missing(_longitudeMeta);
    }
    if (data.containsKey('local_create')) {
      context.handle(
          _localCreateMeta,
          localCreate.isAcceptableOrUnknown(
              data['local_create']!, _localCreateMeta));
    } else if (isInserting) {
      context.missing(_localCreateMeta);
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    } else if (isInserting) {
      context.missing(_addressMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {taskId};
  @override
  SurveyTaskQueueData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return SurveyTaskQueueData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $SurveyTaskQueueTable createAlias(String alias) {
    return $SurveyTaskQueueTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $FormUploadTable formUpload = $FormUploadTable(this);
  late final $FormQuisionerTable formQuisioner = $FormQuisionerTable(this);
  late final $ZipcodeTable zipcode = $ZipcodeTable(this);
  late final $SurveyTaskQueueTable surveyTaskQueue =
      $SurveyTaskQueueTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [formUpload, formQuisioner, zipcode, surveyTaskQueue];
}
