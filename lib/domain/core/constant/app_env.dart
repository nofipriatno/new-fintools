import 'package:fintools/domain/core/interface/i_storage.dart';
import 'package:injectable/injectable.dart';

abstract class Env {
  Future<String> get getBaseUrl;
}

@Injectable(as: Env)
@Environment(Environment.prod)
class EnvProd extends Env {
  @override
  Future<String> get getBaseUrl async => 'http://202.147.193.194:5800/';
}

@Injectable(as: Env)
@Environment(Environment.dev)
class EnvDev extends Env {
  final IStorage _storage;
  EnvDev(this._storage);
  @override
  Future<String> get getBaseUrl async {
    return 'http://202.147.193.194:5800/';
    // final _box = await _storage.openBox(StorageConstants.base);
    // String? devUrl = _storage.getString(_box, key: 'devUrl');
    // if (devUrl == null) {
    //   return Endpoints.baseUrl;
    // } else {
    //   return devUrl;
    // }
  }
}
