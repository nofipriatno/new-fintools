import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fintools/domain/core/constant/app_endpoint.dart';
import 'package:fintools/domain/core/constant/app_string.dart';
import 'package:fintools/domain/core/exceptions/exceptions.dart';
import 'package:fintools/domain/core/failure/generic_failure.dart';
import 'package:fintools/domain/core/interface/i_network_service.dart';
import 'package:fintools/domain/core/interface/i_storage.dart';
import 'package:fintools/domain/survey/interface/i_user_survey.dart';
import 'package:fintools/domain/survey/local/survey_client_model.dart';
import 'package:fintools/domain/survey/local/survey_data_model.dart';
import 'package:fintools/domain/survey/local/survey_question_model.dart';
import 'package:fintools/domain/survey/response/survey_login_response/survey_login_response.dart';
import 'package:fintools/domain/survey/response/survey_task_list_response/survey_task_list_response.dart';
import 'package:fintools/utilities/utilities.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IUserSurvey)
class UserSurveyRepository implements IUserSurvey {
  final INetworkService _networkService;
  final IStorage _storage;

  UserSurveyRepository(this._networkService, this._storage);

  @override
  Future<Either<GenericFailure, SurveyLoginResponse>> surveyLogin(
      {required String username, required String password}) async {
    try {
      const path = AppEndpoint.surveyLogin;
      final apiResult = await _networkService.postHttp(
          path: path, content: {'nik': username, 'password': password});
      SurveyLoginResponse response = SurveyLoginResponse.fromJson(apiResult);
      final box = await _storage.openBox(StorageConstants.userSurvey);
      await _storage.setJson(box,
          key: AppString.surveyCredentialKey, object: response.toJson());
      await _storage.putBool(box, key: AppString.surveyIsLoginKey, value: true);
      await _storage.close(box);
      return Right(response);
    } on FailureException catch (_) {
      return const Left(GenericFailure.unknownError());
    } on NetworkException catch (_) {
      return const Left(GenericFailure.unknownError());
    } on ServerException catch (_) {
      return const Left(GenericFailure.serverError());
    } on AuthException catch (_) {
      return const Left(GenericFailure.sessionExpired());
    } on NoInternetException catch (_) {
      return const Left(GenericFailure.noInternet());
    } on TimeOutException catch (_) {
      return const Left(GenericFailure.generalError());
    } catch (e) {
      return const Left(GenericFailure.unknownError());
    }
  }

  @override
  Future<Either<GenericFailure, bool>> postSurveyData({
    required List<SurveyClientModel> client,
    required List<QuestionAnswerModel> question,
    required List<SurveyDataModel> data,
    required SurveyTask task,
  }) async {
    try {
      final res = FormData.fromMap(
        AppUtils.createSurveyFormData(
          client: client,
          question: question,
          data: data,
          task: task,
        ),
      );

      final apiResult = await _networkService.postHttp(
        contentType: 'multipart/form-data',
        path: AppEndpoint.surveyPost,
        content: FormData.fromMap(
          AppUtils.createSurveyFormData(
            client: client,
            question: question,
            data: data,
            task: task,
          ),
        ),
      );
      return right(true);
    } on FailureException catch (_) {
      return const Left(GenericFailure.unknownError());
    } on NetworkException catch (_) {
      return const Left(GenericFailure.unknownError());
    } on ServerException catch (e) {
      print('print => ${e.code}');
      print('print => ${e.message}');
      return const Left(GenericFailure.serverError());
    } on AuthException catch (_) {
      return const Left(GenericFailure.sessionExpired());
    } on NoInternetException catch (_) {
      return const Left(GenericFailure.noInternet());
    } on TimeOutException catch (_) {
      return const Left(GenericFailure.generalError());
    } catch (e) {
      return const Left(GenericFailure.unknownError());
    }
  }

//   static Future<dynamic> proccessSurvey(
//       {List<ClientControllerModel> clients,
//         List<PhotoResult> assets,
//         List<PhotoResult> document,
//         List<QuisionerAnswerModel> quisioner,
//         LocationData location}) async {
//     var url = 'Api/Survey';
//     var options = await _getDioOptions(contentType: contentType.multipart);
//
//     var client = {}
//       ..putIfAbsent('GELAR_DEPAN', () => 'MR')
//       ..putIfAbsent(
//           'NAMA',
//               () => clients
//               .firstWhere((element) => element.controllerName == 'name')
//               .controller
//               .text)
//       ..putIfAbsent('GELAR_BELAKANG', () => 'S.Kom')
//       ..putIfAbsent(
//           'NAMA_KTP',
//               () => clients
//               .firstWhere((element) => element.controllerName == 'name')
//               .controller
//               .text)
//       ..putIfAbsent(
//           'NO_KTP',
//               () => clients
//               .firstWhere((element) => element.controllerName == 'identity_no')
//               .controller
//               .text)
//       ..putIfAbsent('KTP_EXPIRE_FROM', () => '2021-08-27')
//       ..putIfAbsent('KTP_EXPIRE_TO', () => '2021-09-10')
//       ..putIfAbsent('AO', () => "Test Dulu")
//       ..putIfAbsent('TGLLAHIR', () => '2021-07-10')
//       ..putIfAbsent(
//           'TEMPATLAHIR',
//               () => clients
//               .firstWhere((element) => element.controllerName == 'birth_date')
//               .controller
//               .text)
//       ..putIfAbsent(
//           'NAMAIBU',
//               () => clients
//               .firstWhere((element) => element.controllerName == 'mother_name')
//               .controller
//               .text)
//       ..putIfAbsent(
//           'ALAMAT',
//               () => clients
//               .firstWhere((element) => element.controllerName == 'address')
//               .controller
//               .text)
//       ..putIfAbsent(
//           'RT',
//               () => clients
//               .firstWhere((element) => element.controllerName == 'rt')
//               .controller
//               .text)
//       ..putIfAbsent(
//           'RW',
//               () => clients
//               .firstWhere((element) => element.controllerName == 'rw')
//               .controller
//               .text)
//       ..putIfAbsent(
//           'KODEPOS',
//               () => clients
//               .firstWhere((element) => element.controllerName == 'zipcode')
//               .controller
//               .text)
//       ..putIfAbsent(
//           'KELURAHAN',
//               () => clients
//               .firstWhere((element) => element.controllerName == 'village')
//               .controller
//               .text)
//       ..putIfAbsent(
//           'KECAMATAN',
//               () => clients
//               .firstWhere((element) => element.controllerName == 'district')
//               .controller
//               .text)
//       ..putIfAbsent(
//           'HPNO',
//               () => clients
//               .firstWhere((element) => element.controllerName == 'handphone_no')
//               .controller
//               .text)
//       ..putIfAbsent(
//           'TELPNO',
//               () => clients
//               .firstWhere((element) => element.controllerName == 'phone_no')
//               .controller
//               .text)
//       ..putIfAbsent(
//           'FAXNO',
//               () => clients
//               .firstWhere((element) => element.controllerName == 'fax')
//               .controller
//               .text)
//       ..putIfAbsent('NOPOL', () => 'B 1235 FFA')
//       ..putIfAbsent('LAT', () => location.latitude.toString())
//       ..putIfAbsent('LNG', () => location.longitude.toString())
//       ..putIfAbsent(
//           'IDQUESTION', () => MasterRepositories.quisioners[0].idQuisioner)
//       ..putIfAbsent('TASKID', () => '049cfde3-0835-40d4-b77d-a6ef761f8043');
//
//     List<String> idFormDetails = [];
//     List<String> idQuisionerDetail = [];
//     List<String> listJawaban = [];
//
//     var params = {
//       'BODYJSON': jsonEncode(client),
//       'IDFORMDETAIL': idFormDetails
//     };
//
//     for (var item in quisioner) {
//       var jawaban = '';
//       if (item?.choice != null) {
//         jawaban = "${item.choice.value} ";
//       }
//
//       if (item?.controller?.text != null && item.controller.text != '') {
//         jawaban += "(${item.controller.text})";
//       }
//       idQuisionerDetail.add(item.id);
//       listJawaban.add(jawaban == '' ? "Tidak Terisi" : jawaban);
//     }
// /*
//     for (var item in idQuisionerDetail) {
//       print("ini item :$item");
//     }
//     for (var item in listJawaban) {
//       print("ini jwaban :$item");
//     }
// */
//
//     params.putIfAbsent('IDQUISIONERDETAIL', () => idQuisionerDetail);
//     params.putIfAbsent('JAWABAN', () => listJawaban);
//
//     for (var item in assets) {
//       idFormDetails.add(item.form.id);
//       List<MultipartFile> files = [];
//       var formName = '';
//       for (var file in item.result) {
//         files.add(MultipartFile.fromFileSync(file.path));
//         formName = file.formName;
//       }
//       params.putIfAbsent(formName, () => files);
//     }
//
//     for (var item in document) {
//       idFormDetails.add(item.form.id);
//       List<MultipartFile> files = [];
//       var formName = '';
//       for (var file in item.result) {
//         files.add(MultipartFile.fromFileSync(file.path));
//         formName = file.formName;
//       }
//       params.putIfAbsent(formName, () => files);
//     }
//
//     var param = FormData.fromMap(params);
//
//     var time = Timer.periodic(Duration(seconds: 1), (timer) {});
//
//     var result = await config(AppType.survey).post(url,
//         data: param, options: options, onSendProgress: (send, total) {
//           print("send data :$send of $total");
//         }).onError((error, stackTrace) {
//       print('ini error :$error');
//       return null;
//     });
//
// /*    for (var item in param.fields) {
//       print("ini key :${item.key}");
//       print("ini value :${item.value}");
//     }*/
//
//     if (result.data != null) {
//       var finalResult =
//       result != null ? APIResponse.fromJson(result.data) : null;
//       if (finalResult != null) {
//         finalResult.copyWith(processTimeInSecond: time.tick);
//         time.cancel();
//       }
//       return finalResult;
//     } else {
//       return null;
//     }
//   }
}
