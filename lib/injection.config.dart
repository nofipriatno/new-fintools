// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:alice/alice.dart' as _i3;
import 'package:connectivity_plus/connectivity_plus.dart' as _i4;
import 'package:dio/dio.dart' as _i15;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i10;
import 'package:hive_flutter/hive_flutter.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import 'application/app_preferences/app_preferences_bloc.dart' as _i14;
import 'application/interceptor/interceptor_bloc.dart' as _i28;
import 'application/on_boarding/on_boarding_bloc.dart' as _i12;
import 'application/survey/home/survey_home_bloc.dart' as _i23;
import 'application/survey/login/survey_login_bloc.dart' as _i24;
import 'application/survey/task/survey_task_bloc.dart' as _i25;
import 'domain/core/constant/app_env.dart' as _i16;
import 'domain/core/interface/i_database.dart' as _i6;
import 'domain/core/interface/i_network_service.dart' as _i17;
import 'domain/core/interface/i_storage.dart' as _i8;
import 'domain/survey/interface/i_check_latest_survey.dart' as _i26;
import 'domain/survey/interface/i_survey.dart' as _i19;
import 'domain/survey/interface/i_user_survey.dart' as _i21;
import 'infrastructure/core/database.dart' as _i7;
import 'infrastructure/core/network_service.dart' as _i18;
import 'infrastructure/core/register_module.dart' as _i29;
import 'infrastructure/core/storage.dart' as _i9;
import 'infrastructure/survey/check_latest_survey_facade.dart' as _i27;
import 'infrastructure/survey/survey_repository.dart' as _i20;
import 'infrastructure/survey/user_survey_repository.dart' as _i22;
import 'my_app.dart' as _i11;
import 'simple_bloc_observer.dart' as _i13;

const String _prod = 'prod';
const String _dev = 'dev';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Alice>(() => registerModule.alice, registerFor: {_prod});
  gh.lazySingleton<_i3.Alice>(() => registerModule.aliceDev,
      registerFor: {_dev});
  gh.lazySingleton<_i4.Connectivity>(() => registerModule.connectivity);
  gh.lazySingleton<_i5.HiveInterface>(() => registerModule.hive);
  gh.lazySingleton<_i6.IDatabase>(() => _i7.AppDatabase());
  gh.lazySingleton<_i8.IStorage>(() => _i9.Storage(get<_i10.HiveInterface>()));
  gh.factory<_i11.MyApp>(() => _i11.MyApp(alice: get<_i3.Alice>()));
  gh.factory<_i12.OnBoardingBloc>(
      () => _i12.OnBoardingBloc(get<_i8.IStorage>()));
  gh.factory<_i13.SimpleBlocObserver>(() => _i13.SimpleBlocObserver());
  gh.factory<_i14.AppPreferencesBloc>(
      () => _i14.AppPreferencesBloc(get<_i8.IStorage>()));
  await gh.lazySingletonAsync<_i15.Dio>(
      () => registerModule.dioDev(get<_i3.Alice>(), get<_i8.IStorage>()),
      registerFor: {_dev},
      preResolve: true);
  await gh.lazySingletonAsync<_i15.Dio>(
      () => registerModule.dio(get<_i3.Alice>(), get<_i8.IStorage>()),
      registerFor: {_prod},
      preResolve: true);
  gh.factory<_i16.Env>(() => _i16.EnvProd(get<_i8.IStorage>()),
      registerFor: {_prod});
  gh.factory<_i16.Env>(() => _i16.EnvDev(get<_i8.IStorage>()),
      registerFor: {_dev});
  gh.lazySingleton<_i17.INetworkService>(() => _i18.NetworkService(
      get<_i15.Dio>(),
      get<_i8.IStorage>(),
      get<_i4.Connectivity>(),
      get<_i16.Env>()));
  gh.lazySingleton<_i19.ISurvey>(() =>
      _i20.SurveyRepository(get<_i17.INetworkService>(), get<_i6.IDatabase>()));
  gh.lazySingleton<_i21.IUserSurvey>(() => _i22.UserSurveyRepository(
      get<_i17.INetworkService>(), get<_i8.IStorage>()));
  gh.factory<_i23.SurveyHomeBloc>(() => _i23.SurveyHomeBloc(
      get<_i19.ISurvey>(), get<_i8.IStorage>(), get<_i6.IDatabase>()));
  gh.factory<_i24.SurveyLoginBloc>(
      () => _i24.SurveyLoginBloc(get<_i21.IUserSurvey>()));
  gh.factory<_i25.SurveyTaskBloc>(() => _i25.SurveyTaskBloc(get<_i19.ISurvey>(),
      get<_i6.IDatabase>(), get<_i8.IStorage>(), get<_i21.IUserSurvey>()));
  gh.lazySingleton<_i26.ICheckLatestSurveyFacade>(() =>
      _i27.CheckLatestSurveyFacade(get<_i17.INetworkService>(),
          get<_i8.IStorage>(), get<_i6.IDatabase>()));
  gh.factory<_i28.InterceptorBloc>(() => _i28.InterceptorBloc(
      get<_i8.IStorage>(),
      get<_i26.ICheckLatestSurveyFacade>(),
      get<_i6.IDatabase>()));
  return get;
}

class _$RegisterModule extends _i29.RegisterModule {}
