// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity_plus/connectivity_plus.dart' as _i3;
import 'package:dio/dio.dart' as _i13;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i8;
import 'package:hive_flutter/hive_flutter.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:onesignal_flutter/onesignal_flutter.dart' as _i11;

import 'application/interceptor/interceptor_bloc.dart' as _i9;
import 'application/on_boarding/on_boarding_bloc.dart' as _i10;
import 'domain/core/constant/app_env.dart' as _i4;
import 'domain/core/interface/i_network_service.dart' as _i14;
import 'domain/core/interface/i_storage.dart' as _i6;
import 'infrastructure/core/network_service.dart' as _i15;
import 'infrastructure/core/register_module.dart' as _i16;
import 'infrastructure/core/storage.dart' as _i7;
import 'simple_bloc_observer.dart' as _i12;

const String _prod = 'prod';
const String _dev = 'dev';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Connectivity>(() => registerModule.connectivity);
  gh.factory<_i4.Env>(() => _i4.EnvProd(), registerFor: {_prod});
  gh.lazySingleton<_i5.HiveInterface>(() => registerModule.hive);
  gh.lazySingleton<_i6.IStorage>(() => _i7.Storage(get<_i8.HiveInterface>()));
  gh.factory<_i9.InterceptorBloc>(() => _i9.InterceptorBloc());
  gh.factory<_i10.OnBoardingBloc>(
      () => _i10.OnBoardingBloc(get<_i6.IStorage>()));
  gh.lazySingleton<_i11.OneSignal>(() => registerModule.oneSignal);
  gh.factory<_i12.SimpleBlocObserver>(() => _i12.SimpleBlocObserver());
  await gh.lazySingletonAsync<_i13.Dio>(
      () => registerModule.dioDev(get<_i6.IStorage>()),
      registerFor: {_dev},
      preResolve: true);
  await gh.lazySingletonAsync<_i13.Dio>(
      () => registerModule.dio(get<_i6.IStorage>()),
      registerFor: {_prod},
      preResolve: true);
  gh.factory<_i4.Env>(() => _i4.EnvDev(get<_i6.IStorage>()),
      registerFor: {_dev});
  gh.lazySingleton<_i14.INetworkService>(() => _i15.NetworkService(
      get<_i13.Dio>(),
      get<_i6.IStorage>(),
      get<_i3.Connectivity>(),
      get<_i4.Env>()));
  return get;
}

class _$RegisterModule extends _i16.RegisterModule {}
