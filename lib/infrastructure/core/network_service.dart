import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:fintools/domain/core/constant/app_env.dart';
import 'package:fintools/domain/core/constant/app_string.dart';
import 'package:fintools/domain/core/exceptions/exceptions.dart';
import 'package:fintools/domain/core/interface/i_network_service.dart';
import 'package:fintools/domain/core/interface/i_storage.dart';
import 'package:fintools/domain/survey/response/survey_login_response/survey_login_response.dart';
import 'package:fintools/utilities/i10n/l10n.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: INetworkService)
class NetworkService implements INetworkService {
  final Dio _dio;
  final Connectivity _connectivity;
  final IStorage baseStorage;
  final Env _env;

  NetworkService(this._dio, this.baseStorage, this._connectivity, this._env);

  @override
  Future<dynamic> getHttp(
      {required String path,
      String? parameter,
      Map<String, dynamic>? queryParameter,
      Map<String, dynamic>? header,
      bool useAuth = true}) async {
    final connectivityResult = await _connectivity.checkConnectivity();
    if (connectivityResult != ConnectivityResult.none) {
      try {
        String baseUrl = await _env.getBaseUrl;

        final Map<String, dynamic> headers = _dio.options.headers;
        headers.addAll({
          'content-type': ContentType.json.mimeType,
          'accept': ContentType.json.mimeType
        });
        if (useAuth) {
          final _localeBox = await baseStorage.openBox(StorageConstants.locale);
          final _product =
              baseStorage.getString(_localeBox, key: AppString.appProduct);
          if (_product == I10n.current.product_key_3) {
            //survey
            final _surveyBox =
                await baseStorage.openBox(StorageConstants.userSurvey);
            final _surveyData = baseStorage.getJson(_surveyBox,
                key: AppString.surveyCredentialKey);
            final credential = _surveyData == null
                ? null
                : SurveyLoginResponse.fromJson(_surveyData);
            if (credential?.token != null) {
              headers.addAll({'Authorization': 'Bearer ${credential?.token}'});
            }
            await baseStorage.close(_surveyBox);
          } else if (_product == I10n.current.product_key_1) {
            //iprove
          } else if (_product == I10n.current.product_key_2) {
            //collection
          }
          await baseStorage.close(_localeBox);
        }

        if (header != null) {
          headers.addAll(header);
        }

        _dio.options.headers = headers;

        final Response response = await _dio.get(
            '$baseUrl$path${parameter ?? ""}',
            queryParameters: queryParameter);
        final responseCode = response.data['status'].toString();
        if (responseCode == '200') {
          return response.data;
        } else {
          throw FailureException(
            code: response.data['status'],
            message: 'Failure',
          );
        }
      } on DioError catch (e) {
        switch (e.type) {
          case DioErrorType.connectTimeout:
            throw TimeOutException();
          case DioErrorType.other:
            throw NetworkException(message: e.response!.data);
          default:
            if (e.response?.statusCode == 401) {
              throw AuthException(
                message: 'Unauthorized',
              );
            } else {
              throw ServerException(
                code: e.response?.statusCode,
                message: e.response?.statusMessage,
              );
            }
        }
      }
    } else {
      throw NoInternetException();
    }
  }

  @override
  Future<dynamic> postHttp({
    required String path,
    String? parameter,
    Map<String, dynamic>? queryParameter,
    dynamic content,
    String? contentType,
    Map<String, dynamic>? header,
    bool useAuth = true,
  }) async {
    final connectivityResult = await _connectivity.checkConnectivity();
    if (connectivityResult != ConnectivityResult.none) {
      try {
        String baseUrl = await _env.getBaseUrl;
        final Map<String, dynamic> headers = {
          'content-type': ContentType.json.mimeType,
          'Accept': ContentType.json.mimeType,
        };
        if (header != null) {
          headers.addAll(header);
        }
        if (useAuth) {
          final _localeBox = await baseStorage.openBox(StorageConstants.locale);
          final _product =
              baseStorage.getString(_localeBox, key: AppString.appProduct);
          if (_product == I10n.current.product_key_3) {
            //survey
            final _surveyBox =
                await baseStorage.openBox(StorageConstants.userSurvey);
            final _surveyData = baseStorage.getJson(_surveyBox,
                key: AppString.surveyCredentialKey);
            final credential = _surveyData == null
                ? null
                : SurveyLoginResponse.fromJson(_surveyData);
            if (credential?.token != null) {
              headers.addAll({'Authorization': 'Bearer ${credential?.token}'});
            }
            await baseStorage.close(_surveyBox);
          } else if (_product == I10n.current.product_key_1) {
            //iprove
          } else if (_product == I10n.current.product_key_2) {
            //collection
          }
          await baseStorage.close(_localeBox);
        }

        final Response response = await _dio.post(
          '$baseUrl$path${parameter ?? ""}',
          queryParameters: queryParameter,
          data: content,
        );
        final responseCode = response.data['status'].toString();
        if (responseCode == '200') {
          return response.data;
        } else {
          throw FailureException(
            code: response.data['status'],
            message: 'Failure',
          );
        }
      } on DioError catch (e) {
        switch (e.type) {
          case DioErrorType.connectTimeout:
            throw TimeOutException();
          case DioErrorType.other:
            throw NetworkException(message: e.response!.data);
          default:
            if (e.response?.statusCode == 401) {
              throw AuthException(
                message: 'Unauthorized',
              );
            } else {
              throw ServerException(
                code: e.response?.statusCode,
                message: e.response?.statusMessage,
              );
            }
        }
      }
    } else {
      throw NoInternetException();
    }
  }

  @override
  Future<dynamic> putHttp({
    required String path,
    String? parameter,
    Map<String, dynamic>? queryParameter,
    Map<String, dynamic>? content,
    String? contentType,
    Map<String, dynamic>? header,
    bool useAuth = true,
  }) async {
    final connectivityResult = await _connectivity.checkConnectivity();
    if (connectivityResult != ConnectivityResult.none) {
      try {
        final Map<String, dynamic> headers = {
          'content-type': contentType ?? ContentType.json.mimeType,
          'Accept': ContentType.json.mimeType,
        };
        if (header != null) {
          headers.addAll(header);
        }

        if (useAuth) {
          final _localeBox = await baseStorage.openBox(StorageConstants.locale);
          final _product =
              baseStorage.getString(_localeBox, key: AppString.appProduct);
          if (_product == I10n.current.product_key_3) {
            //survey
            final _surveyBox =
                await baseStorage.openBox(StorageConstants.userSurvey);
            final _surveyData = baseStorage.getJson(_surveyBox,
                key: AppString.surveyCredentialKey);
            final credential = _surveyData == null
                ? null
                : SurveyLoginResponse.fromJson(_surveyData);
            if (credential?.token != null) {
              headers.addAll({'Authorization': 'Bearer ${credential?.token}'});
            }
            await baseStorage.close(_surveyBox);
          } else if (_product == I10n.current.product_key_1) {
            //iprove
          } else if (_product == I10n.current.product_key_2) {
            //collection
          }
          await baseStorage.close(_localeBox);
        }

        _dio.options.headers = headers;

        final Response response = await _dio.put(
          '$path${parameter ?? ""}',
          queryParameters: queryParameter,
          data: content,
        );
        final responseCode = response.data['status'].toString();
        if (responseCode == '200') {
          return response.data;
        } else {
          throw FailureException(
            code: response.data['status'],
            message: 'Failure',
          );
        }
      } on DioError catch (e) {
        switch (e.type) {
          case DioErrorType.connectTimeout:
            throw TimeOutException();
          case DioErrorType.other:
            throw NetworkException(message: e.response!.data);
          default:
            if (e.response?.statusCode == 401) {
              throw AuthException(
                message: 'Unauthorized',
              );
            } else {
              throw ServerException(
                code: e.response?.statusCode,
                message: e.response?.statusMessage,
              );
            }
        }
      }
    } else {
      throw NoInternetException();
    }
  }

  @override
  Future<dynamic> download(
      {required String url,
      required String downloadPath,
      Map<String, dynamic>? queryParameter,
      Map<String, dynamic>? header,
      bool useAuth = true}) async {
    final connectivityResult = await _connectivity.checkConnectivity();
    if (connectivityResult != ConnectivityResult.none) {
      try {
        final Map<String, dynamic> headers = {
          'Accept': ContentType.binary.mimeType,
        };
        if (useAuth) {
          final _localeBox = await baseStorage.openBox(StorageConstants.locale);
          final _product =
              baseStorage.getString(_localeBox, key: AppString.appProduct);
          if (_product == I10n.current.product_key_3) {
            //survey
            final _surveyBox =
                await baseStorage.openBox(StorageConstants.userSurvey);
            final _surveyData = baseStorage.getJson(_surveyBox,
                key: AppString.surveyCredentialKey);
            final credential = _surveyData == null
                ? null
                : SurveyLoginResponse.fromJson(_surveyData);
            if (credential?.token != null) {
              headers.addAll({'Authorization': 'Bearer ${credential?.token}'});
            }
            await baseStorage.close(_surveyBox);
          } else if (_product == I10n.current.product_key_1) {
            //iprove
          } else if (_product == I10n.current.product_key_2) {
            //collection
          }
          await baseStorage.close(_localeBox);
        }
        final savedDir = Directory(downloadPath);
        final bool hasExisted = await savedDir.exists();
        if (!hasExisted) {
          await savedDir.create(recursive: true);
        }
        _dio.options.headers = headers;
        final Response response = await _dio.download(url, downloadPath);
        final responseCode = response.data['status'].toString();
        if (responseCode == '200') {
          return response.data;
        } else {
          throw FailureException(
            code: response.data['status'],
            message: 'Failure',
          );
        }
      } on DioError catch (e) {
        switch (e.type) {
          case DioErrorType.connectTimeout:
            throw TimeOutException();
          case DioErrorType.other:
            throw NetworkException(message: e.response!.data);
          default:
            if (e.response?.statusCode == 401) {
              throw AuthException(
                message: 'Unauthorized',
              );
            } else {
              throw ServerException(
                code: e.response?.statusCode,
                message: e.response?.statusMessage,
              );
            }
        }
      }
    } else {
      throw NoInternetException();
    }
  }
}
