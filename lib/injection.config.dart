// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity_plus/connectivity_plus.dart' as _i3;
import 'package:dio/dio.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i8;
import 'package:hive_flutter/hive_flutter.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:onesignal_flutter/onesignal_flutter.dart' as _i10;

import 'application/interceptor/interceptor_bloc.dart' as _i17;
import 'application/on_boarding/on_boarding_bloc.dart' as _i9;
import 'domain/core/constant/app_env.dart' as _i4;
import 'domain/core/interface/i_network_service.dart' as _i13;
import 'domain/core/interface/i_storage.dart' as _i6;
import 'domain/survey/interface/i_check_latest_survey.dart' as _i15;
import 'infrastructure/core/network_service.dart' as _i14;
import 'infrastructure/core/register_module.dart' as _i18;
import 'infrastructure/core/storage.dart' as _i7;
import 'infrastructure/survey/check_latest_survey_facade.dart' as _i16;
import 'simple_bloc_observer.dart' as _i11;

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
  gh.factory<_i9.OnBoardingBloc>(() => _i9.OnBoardingBloc(get<_i6.IStorage>()));
  gh.lazySingleton<_i10.OneSignal>(() => registerModule.oneSignal);
  gh.factory<_i11.SimpleBlocObserver>(() => _i11.SimpleBlocObserver());
  await gh.lazySingletonAsync<_i12.Dio>(
      () => registerModule.dioDev(get<_i6.IStorage>()),
      registerFor: {_dev},
      preResolve: true);
  await gh.lazySingletonAsync<_i12.Dio>(
      () => registerModule.dio(get<_i6.IStorage>()),
      registerFor: {_prod},
      preResolve: true);
  gh.factory<_i4.Env>(() => _i4.EnvDev(get<_i6.IStorage>()),
      registerFor: {_dev});
  gh.lazySingleton<_i13.INetworkService>(() => _i14.NetworkService(
      get<_i12.Dio>(),
      get<_i6.IStorage>(),
      get<_i3.Connectivity>(),
      get<_i4.Env>()));
  gh.lazySingleton<_i15.ICheckLatestSurveyFacade>(() =>
      _i16.CheckLatestSurveyFacade(
          get<_i13.INetworkService>(), get<_i6.IStorage>()));
  gh.factory<_i17.InterceptorBloc>(() => _i17.InterceptorBloc(
      get<_i6.IStorage>(), get<_i15.ICheckLatestSurveyFacade>()));
  return get;
}

class _$RegisterModule extends _i18.RegisterModule {}
