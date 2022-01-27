import 'package:drift/drift.dart';

class SurveyTaskQueue extends Table {
  @override
  Set<Column> get primaryKey => {taskId, taskId};

  TextColumn get taskId => text()();

  TextColumn get nik => text()();

  TextColumn get name => text()();

  TextColumn get platNumber => text()();

  IntColumn get isPush => integer()();

  DateTimeColumn get creDate => dateTime()();

  TextColumn get latitude => text()();

  TextColumn get longitude => text()();

  DateTimeColumn get localCreate => dateTime()();

  TextColumn get address => text()();
}
