import 'dart:convert';
import 'dart:typed_data';

import 'package:fintools/domain/core/interface/i_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IStorage)
class Storage implements IStorage {
  final HiveInterface hive;

  Storage(
    this.hive,
  );

  @override
  Future<Box> openBox(
    StorageConstants boxName,
  ) async {
    List<int>? hiveKey = await hiveKeys;

    final _box = await hive.openBox(
      describeEnum(boxName),
      encryptionCipher: HiveAesCipher(hiveKey),
    );
    return _box;
  }

  @override
  Future close(
    Box box,
  ) async {
    await box.close();
    return;
  }

  @override
  Future<void> putData(Box box, {required Map<String, dynamic> json}) async {
    try {
      await box.putAll(json);
      return;
    } catch (_) {}
  }

  @override
  Future putDynamicData(Box box,
      {required String key, required dynamic value}) async {
    await box.put(key, value);
  }

  @override
  Future<void> putListData(Box box, {required List dataList}) async {
    try {
      dataList.map((e) async {
        await box.add(e);
      });
    } catch (_) {}

    return;
  }

  @override
  Future<void> putString(Box box,
      {required String key, required String value}) async {
    await box.put(key, value);
    return;
  }

  @override
  Future<void> putBool(Box box,
      {required String key, required bool value}) async {
    await box.put(key, value);
    return;
  }

  @override
  String? getString(Box box, {required String key}) {
    String? value = box.get(key);
    return value;
  }

  @override
  getJson(Box box, {required String key}) {
    try {
      dynamic value = box.get(key) != null ? jsonDecode(box.get(key)) : null;
      return value;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<void> setJson(Box box,
      {required String key, required Map<String, dynamic> object}) async {
    await box.put(key, jsonEncode(object));
    return;
  }

  @override
  Future<DateTime?> getDate(Box box, {required String key}) async {
    DateTime? date = box.get(key);
    // box.close();
    return date;
  }

  @override
  Future<int?> getInt(Box box, {required String key}) async {
    int? value = box.get(key);
    return value;
  }

  @override
  Future<bool> getBool(Box box, {required String key}) async {
    bool? value = box.get(key);
    value ??= false;
    // box.close();
    return value;
  }

  @override
  Future<double?> getDouble(Box box, {required String key}) async {
    double? value = box.get(key);
    // box.close();
    return value;
  }

  @override
  Future<Map<String, dynamic>> getData(
    Box box,
  ) async {
    Map<String, dynamic>? value = Map<String, dynamic>.from(box.toMap());
    return value;
  }

  @override
  Future<dynamic> getDynamicData(Box box, {required String key}) async {
    return box.get(key);
  }

  @override
  Future<List?> getListData(
    Box box,
  ) async {
    final value = box.toMap();
    List data = [];
    value.forEach((key, value) {
      data.add(value);
    });
    // box.close();
    return data;
  }

  @override
  Future<void> deleteData(
    Box box,
  ) async {
    await box.deleteFromDisk();
    return;
  }

  @override
  Future<void> deleteString(Box box, {required String key}) async {
    await box.delete(key);
    // box.close();
    return;
  }

  Future<List<int>> get hiveKeys async {
    const ss = FlutterSecureStorage();
    String? stringKey = await ss.read(key: 'boxKey');
    List<int> hiveKey;
    if (stringKey != null) {
      hiveKey = stringKey.codeUnits;
    } else {
      hiveKey = Hive.generateSecureKey();
      Uint8List bytes = Uint8List.fromList(hiveKey);
      stringKey = String.fromCharCodes(bytes);
      await ss.write(key: 'boxKey', value: stringKey);
    }
    return hiveKey;
  }
}
