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
      required this.modBy});
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
          String? modBy}) =>
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
          ..write('modBy: $modBy')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, idForm, code, name, type, formName, count,
      creDate, creBy, modDate, modBy);
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
          other.modBy == this.modBy);
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
        modBy = Value(modBy);
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
      Value<String>? modBy}) {
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
          ..write('modBy: $modBy')
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
        modBy
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

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $FormUploadTable formUpload = $FormUploadTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [formUpload];
}
