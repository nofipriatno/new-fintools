import 'dart:io';

import 'package:alice/alice.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:fintools/domain/core/interface/i_storage.dart';
import 'package:fintools/infrastructure/core/logger_interceptor.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
// import 'package:onesignal_flutter/onesignal_flutter.dart';

@module
abstract class RegisterModule {
  @Environment(Environment.prod)
  @lazySingleton
  Alice get alice => Alice(showNotification: false);

  @Environment(Environment.dev)
  @lazySingleton
  Alice get aliceDev => Alice(showNotification: true);

  @lazySingleton
  HiveInterface get hive => Hive;

  @Environment(Environment.dev)
  @preResolve
  @lazySingleton
  Future<Dio> dioDev(Alice alice, IStorage _storage) async {
    Dio _dio = Dio();
    BaseOptions baseOptions = BaseOptions(
      connectTimeout: 120000,
      receiveTimeout: 60000,
      sendTimeout: 60000,
    );
    _dio.options = baseOptions;

    (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) {
        return true;
      };
      return client;
    };

    _dio.interceptors.add(LoggerInterceptor(
        requestBody: true,
        request: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true));

    _dio.interceptors.add(alice.getDioInterceptor());
    return _dio;
  }

  @Environment(Environment.prod)
  @preResolve
  @lazySingleton
  Future<Dio> dio(Alice alice, IStorage _storage) async {
    Dio _dio = Dio();
    BaseOptions baseOptions = BaseOptions(
      connectTimeout: 120000,
      receiveTimeout: 60000,
      sendTimeout: 60000,
    );
    _dio.options = baseOptions;

    (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) {
        return true;
      };
      return client;
    };

    return _dio;
  }

  @lazySingleton
  Connectivity get connectivity => Connectivity();
//
// @lazySingleton
// OneSignal get oneSignal => OneSignal.shared;
}
