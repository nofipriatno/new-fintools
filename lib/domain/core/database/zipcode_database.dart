import 'package:drift/drift.dart';

class Zipcode extends Table {
  @override
  Set<Column> get primaryKey => {id, id};

  IntColumn get id => integer()();

  TextColumn get city => text()();

  TextColumn get subDistrict => text()();

  TextColumn get district => text()();

  TextColumn get postCode => text()();

  TextColumn get billArea => text()();
}
