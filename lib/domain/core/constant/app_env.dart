import 'package:fintools/domain/core/constant/app_string.dart';
import 'package:fintools/domain/core/interface/i_storage.dart';
import 'package:injectable/injectable.dart';

abstract class Env {
  Future<String> get getBaseUrl;
}

@Injectable(as: Env)
@Environment(Environment.prod)
class EnvProd extends Env {
  final IStorage _storage;

  EnvProd(this._storage);

  @override
  Future<String> get getBaseUrl async {
    final _box = await _storage.openBox(StorageConstants.locale);
    final url = _storage.getString(_box, key: AppString.appUrl);
    _storage.close(_box);
    return url ?? AppString.appDefaultUrl;
  }
}

@Injectable(as: Env)
@Environment(Environment.dev)
class EnvDev extends Env {
  final IStorage _storage;

  EnvDev(this._storage);

  @override
  Future<String> get getBaseUrl async {
    final _box = await _storage.openBox(StorageConstants.locale);
    final url = _storage.getString(_box, key: AppString.appUrl);
    _storage.close(_box);
    return url ?? AppString.appDefaultUrl;
  }
}
