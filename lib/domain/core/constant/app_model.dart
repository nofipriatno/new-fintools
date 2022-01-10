import 'package:fintools/domain/core/constant/app_enum.dart';
import 'package:fintools/domain/survey/local/survey_client_model.dart';
import 'package:flutter/cupertino.dart';

class AppModel {
  static List<SurveyClientModel> clientForm = [
    SurveyClientModel(
        id: 'id-form-name-1',
        title: 'name',
        clientFormType: ClientFormType.name,
        size: 1,
        controller: TextEditingController()),
    SurveyClientModel(
        id: 'id-form-name-2',
        title: 'nik',
        clientFormType: ClientFormType.nik,
        size: 1,
        controller: TextEditingController()),
    SurveyClientModel(
        id: 'id-form-name-3',
        title: 'valid',
        clientFormType: ClientFormType.date,
        size: 2,
        controller: TextEditingController()),
    SurveyClientModel(
        id: 'id-form-name-4',
        title: 'until',
        clientFormType: ClientFormType.date,
        size: 2,
        controller: TextEditingController()),
    SurveyClientModel(
        id: 'id-form-name-5',
        title: 'city',
        clientFormType: ClientFormType.name,
        size: 1,
        controller: TextEditingController()),
    SurveyClientModel(
        id: 'id-form-name-6',
        title: 'city_birth',
        clientFormType: ClientFormType.name,
        size: 1,
        controller: TextEditingController()),
    SurveyClientModel(
        id: 'id-form-name-7',
        title: 'date_of_birth',
        clientFormType: ClientFormType.date,
        size: 1,
        controller: TextEditingController()),
    SurveyClientModel(
        id: 'id-form-name-8',
        title: 'address',
        clientFormType: ClientFormType.address,
        size: 1,
        controller: TextEditingController()),
    SurveyClientModel(
        id: 'id-form-name-9',
        title: 'mother_name',
        clientFormType: ClientFormType.name,
        size: 1,
        controller: TextEditingController()),
    SurveyClientModel(
        id: 'id-form-name-10',
        title: 'rt',
        clientFormType: ClientFormType.number,
        size: 1,
        controller: TextEditingController()),
    SurveyClientModel(
        id: 'id-form-name-11',
        title: 'rw',
        clientFormType: ClientFormType.number,
        size: 1,
        controller: TextEditingController()),
    SurveyClientModel(
        id: 'id-form-name-12',
        title: 'area_code',
        clientFormType: ClientFormType.zipcode,
        size: 1,
        controller: TextEditingController()),
    SurveyClientModel(
        id: 'id-form-name-13',
        title: 'district',
        clientFormType: ClientFormType.subZipcode,
        size: 1,
        controller: TextEditingController()),
    SurveyClientModel(
        id: 'id-form-name-14',
        title: 'sub_district',
        clientFormType: ClientFormType.subZipcode,
        size: 1,
        controller: TextEditingController()),
    SurveyClientModel(
        id: 'id-form-name-15',
        title: 'phone',
        clientFormType: ClientFormType.phone,
        size: 1,
        controller: TextEditingController()),
    SurveyClientModel(
        id: 'id-form-name-16',
        title: 'mobile_phone',
        clientFormType: ClientFormType.phone,
        size: 1,
        controller: TextEditingController()),
    SurveyClientModel(
        id: 'id-form-name-17',
        title: 'fax',
        clientFormType: ClientFormType.phone,
        size: 1,
        controller: TextEditingController()),
  ];
}
