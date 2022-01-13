import 'package:fintools/domain/core/constant/app_enum.dart';
import 'package:fintools/domain/survey/local/survey_client_model.dart';
import 'package:fintools/utilities/i10n/l10n.dart';
import 'package:flutter/material.dart';

class AppModel {
  static List<SurveyClientModel> clientForm = [
    SurveyClientModel(
        id: 'id-form-name-1',
        title: I10n.current.name,
        limit: 999,
        clientFormType: ClientFormType.name,
        size: 1,
        controller: TextEditingController()),
    SurveyClientModel(
        id: 'id-form-name-2',
        title: I10n.current.nik,
        limit: 16,
        clientFormType: ClientFormType.nik,
        size: 1,
        controller: TextEditingController()),
    SurveyClientModel(
        id: 'id-form-name-3',
        title: I10n.current.valid,
        limit: 999,
        clientFormType: ClientFormType.date,
        size: 1,
        controller: TextEditingController()),
    SurveyClientModel(
        id: 'id-form-name-4',
        title: I10n.current.until,
        limit: 999,
        clientFormType: ClientFormType.date,
        size: 1,
        controller: TextEditingController()),
    SurveyClientModel(
        id: 'id-form-name-5',
        title: I10n.current.city,
        limit: 999,
        clientFormType: ClientFormType.name,
        size: 1,
        controller: TextEditingController()),
    SurveyClientModel(
        id: 'id-form-name-6',
        title: I10n.current.city_birth,
        limit: 999,
        clientFormType: ClientFormType.name,
        size: 1,
        controller: TextEditingController()),
    SurveyClientModel(
        id: 'id-form-name-7',
        title: I10n.current.date_of_birth,
        limit: 999,
        clientFormType: ClientFormType.date,
        size: 1,
        controller: TextEditingController()),
    SurveyClientModel(
        id: 'id-form-name-8',
        title: I10n.current.address,
        limit: 999,
        clientFormType: ClientFormType.address,
        size: 1,
        controller: TextEditingController()),
    SurveyClientModel(
        id: 'id-form-name-9',
        title: I10n.current.mother_name,
        limit: 999,
        clientFormType: ClientFormType.name,
        size: 1,
        controller: TextEditingController()),
    SurveyClientModel(
        id: 'id-form-name-10',
        title: I10n.current.rt,
        limit: 6,
        clientFormType: ClientFormType.number,
        size: 1,
        controller: TextEditingController()),
    SurveyClientModel(
        id: 'id-form-name-11',
        title: I10n.current.rw,
        limit: 6,
        clientFormType: ClientFormType.number,
        size: 1,
        controller: TextEditingController()),
    SurveyClientModel(
        id: 'id-form-name-12',
        title: I10n.current.area_code,
        limit: 10,
        clientFormType: ClientFormType.zipcode,
        size: 1,
        controller: TextEditingController()),
    SurveyClientModel(
        id: 'id-form-name-13',
        title: I10n.current.district,
        limit: 999,
        clientFormType: ClientFormType.subZipcode,
        size: 1,
        controller: TextEditingController()),
    SurveyClientModel(
        id: 'id-form-name-14',
        title: I10n.current.sub_district,
        limit: 999,
        clientFormType: ClientFormType.subZipcode,
        size: 1,
        controller: TextEditingController()),
    SurveyClientModel(
        id: 'id-form-name-15',
        title: I10n.current.phone,
        limit: 16,
        clientFormType: ClientFormType.phone,
        size: 1,
        controller: TextEditingController()),
    SurveyClientModel(
        id: 'id-form-name-16',
        title: I10n.current.mobile_phone,
        limit: 15,
        clientFormType: ClientFormType.phone,
        size: 1,
        controller: TextEditingController()),
    SurveyClientModel(
        id: 'id-form-name-17',
        title: I10n.current.fax,
        limit: 30,
        clientFormType: ClientFormType.phone,
        size: 1,
        controller: TextEditingController()),
  ];
}
