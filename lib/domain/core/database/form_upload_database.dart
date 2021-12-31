import 'package:drift/drift.dart';

class FormUpload extends Table {
  @override
  Set<Column> get primaryKey => {id, id};

  TextColumn get id => text()();

  TextColumn get idForm => text()();

  TextColumn get code => text()();

  TextColumn get name => text()();

  TextColumn get type => text()();

  TextColumn get formName => text()();

  IntColumn get count => integer()();

  DateTimeColumn get creDate => dateTime()();

  TextColumn get creBy => text()();

  DateTimeColumn get modDate => dateTime()();

  TextColumn get modBy => text()();
}
