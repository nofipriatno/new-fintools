import 'package:drift/drift.dart';

class FormQuisioner extends Table {
  @override
  Set<Column> get primaryKey => {id, id};

  TextColumn get id => text()();

  TextColumn get idQuisioner => text()();

  TextColumn get idQuestion => text()();

  TextColumn get question => text()();

  IntColumn get questionTypeFlag => integer()();

  DateTimeColumn get creDate => dateTime()();

  TextColumn get creBy => text()();

  DateTimeColumn get modDate => dateTime()();

  TextColumn get modBy => text()();
}