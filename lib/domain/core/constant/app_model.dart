import 'package:fintools/domain/core/constant/app_enum.dart';
import 'package:fintools/domain/survey/local/survey_client_model.dart';
import 'package:fintools/utilities/i10n/l10n.dart';

class AppModel {
  static List<SurveyClientModel> clientForm = [
    SurveyClientModel(
        id: 'id-form-name-1',
        title: I10n.current.name,
        clientFormType: ClientFormType.name,
        size: 1),
    SurveyClientModel(
        id: 'id-form-name-2',
        title: I10n.current.nik,
        clientFormType: ClientFormType.nik,
        size: 1),
    SurveyClientModel(
        id: 'id-form-name-3',
        title: I10n.current.valid,
        clientFormType: ClientFormType.date,
        size: 1),
    SurveyClientModel(
        id: 'id-form-name-4',
        title: I10n.current.until,
        clientFormType: ClientFormType.date,
        size: 1),
    SurveyClientModel(
        id: 'id-form-name-5',
        title: I10n.current.city,
        clientFormType: ClientFormType.name,
        size: 1),
    SurveyClientModel(
        id: 'id-form-name-6',
        title: I10n.current.city_birth,
        clientFormType: ClientFormType.name,
        size: 1),
    SurveyClientModel(
        id: 'id-form-name-7',
        title: I10n.current.date_of_birth,
        clientFormType: ClientFormType.date,
        size: 1),
    SurveyClientModel(
        id: 'id-form-name-8',
        title: I10n.current.address,
        clientFormType: ClientFormType.address,
        size: 1),
    SurveyClientModel(
        id: 'id-form-name-9',
        title: I10n.current.mother_name,
        clientFormType: ClientFormType.name,
        size: 1),
    SurveyClientModel(
        id: 'id-form-name-10',
        title: I10n.current.rt,
        clientFormType: ClientFormType.number,
        size: 1),
    SurveyClientModel(
        id: 'id-form-name-11',
        title: I10n.current.rw,
        clientFormType: ClientFormType.number,
        size: 1),
    SurveyClientModel(
        id: 'id-form-name-12',
        title: I10n.current.area_code,
        clientFormType: ClientFormType.zipcode,
        size: 1),
    SurveyClientModel(
        id: 'id-form-name-13',
        title: I10n.current.district,
        clientFormType: ClientFormType.subZipcode,
        size: 1),
    SurveyClientModel(
        id: 'id-form-name-14',
        title: I10n.current.sub_district,
        clientFormType: ClientFormType.subZipcode,
        size: 1),
    SurveyClientModel(
        id: 'id-form-name-15',
        title: I10n.current.phone,
        clientFormType: ClientFormType.phone,
        size: 1),
    SurveyClientModel(
        id: 'id-form-name-16',
        title: I10n.current.mobile_phone,
        clientFormType: ClientFormType.phone,
        size: 1),
    SurveyClientModel(
        id: 'id-form-name-17',
        title: I10n.current.fax,
        clientFormType: ClientFormType.phone,
        size: 1),
  ];
}
