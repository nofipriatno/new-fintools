// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class I10n {
  I10n();

  static I10n? _current;

  static I10n get current {
    assert(_current != null,
        'No instance of I10n was loaded. Try to initialize the I10n delegate before accessing I10n.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<I10n> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = I10n();
      I10n._current = instance;

      return instance;
    });
  }

  static I10n of(BuildContext context) {
    final instance = I10n.maybeOf(context);
    assert(instance != null,
        'No instance of I10n present in the widget tree. Did you add I10n.delegate in localizationsDelegates?');
    return instance!;
  }

  static I10n? maybeOf(BuildContext context) {
    return Localizations.of<I10n>(context, I10n);
  }

  /// `en`
  String get lang {
    return Intl.message(
      'en',
      name: 'lang',
      desc: '',
      args: [],
    );
  }

  /// `Fintools`
  String get app_name {
    return Intl.message(
      'Fintools',
      name: 'app_name',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `iprove`
  String get product_key_1 {
    return Intl.message(
      'iprove',
      name: 'product_key_1',
      desc: '',
      args: [],
    );
  }

  /// `collection`
  String get product_key_2 {
    return Intl.message(
      'collection',
      name: 'product_key_2',
      desc: '',
      args: [],
    );
  }

  /// `survey`
  String get product_key_3 {
    return Intl.message(
      'survey',
      name: 'product_key_3',
      desc: '',
      args: [],
    );
  }

  /// `I-Prove`
  String get product_prove {
    return Intl.message(
      'I-Prove',
      name: 'product_prove',
      desc: '',
      args: [],
    );
  }

  /// `Collection`
  String get product_collect {
    return Intl.message(
      'Collection',
      name: 'product_collect',
      desc: '',
      args: [],
    );
  }

  /// `Survey`
  String get product_survey {
    return Intl.message(
      'Survey',
      name: 'product_survey',
      desc: '',
      args: [],
    );
  }

  /// `Lorem Ipsum is simply dummy text of the printing and typesetting industry.`
  String get description_prove {
    return Intl.message(
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      name: 'description_prove',
      desc: '',
      args: [],
    );
  }

  /// `Lorem Ipsum is simply dummy text of the printing and typesetting industry.`
  String get description_collection {
    return Intl.message(
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      name: 'description_collection',
      desc: '',
      args: [],
    );
  }

  /// `Lorem Ipsum is simply dummy text of the printing and typesetting industry.`
  String get description_survey {
    return Intl.message(
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      name: 'description_survey',
      desc: '',
      args: [],
    );
  }

  /// `Input Your Office Domain Address`
  String get input_corp_domain {
    return Intl.message(
      'Input Your Office Domain Address',
      name: 'input_corp_domain',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get button_ok {
    return Intl.message(
      'OK',
      name: 'button_ok',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get button_cancel {
    return Intl.message(
      'Cancel',
      name: 'button_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `History`
  String get history {
    return Intl.message(
      'History',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `Task`
  String get task {
    return Intl.message(
      'Task',
      name: 'task',
      desc: '',
      args: [],
    );
  }

  /// `Welcome, {name}`
  String survey_greeting_user(String name) {
    return Intl.message(
      'Welcome, $name',
      name: 'survey_greeting_user',
      desc: 'Greeting to user login in Survey',
      args: [name],
    );
  }

  /// `Upcoming Survey`
  String get upcoming_survey {
    return Intl.message(
      'Upcoming Survey',
      name: 'upcoming_survey',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get today {
    return Intl.message(
      'Today',
      name: 'today',
      desc: '',
      args: [],
    );
  }

  /// `Task Completed`
  String get task_completed {
    return Intl.message(
      'Task Completed',
      name: 'task_completed',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Hello, Welcome!`
  String get login_greeting1 {
    return Intl.message(
      'Hello, Welcome!',
      name: 'login_greeting1',
      desc: '',
      args: [],
    );
  }

  /// `Nice Too Meet You Again`
  String get login_greeting2 {
    return Intl.message(
      'Nice Too Meet You Again',
      name: 'login_greeting2',
      desc: '',
      args: [],
    );
  }

  /// `Client`
  String get client {
    return Intl.message(
      'Client',
      name: 'client',
      desc: '',
      args: [],
    );
  }

  /// `Quisioner`
  String get quisioner {
    return Intl.message(
      'Quisioner',
      name: 'quisioner',
      desc: '',
      args: [],
    );
  }

  /// `Assets`
  String get asset {
    return Intl.message(
      'Assets',
      name: 'asset',
      desc: '',
      args: [],
    );
  }

  /// `Document`
  String get document {
    return Intl.message(
      'Document',
      name: 'document',
      desc: '',
      args: [],
    );
  }

  /// `Processs`
  String get process {
    return Intl.message(
      'Processs',
      name: 'process',
      desc: '',
      args: [],
    );
  }

  /// `NIK`
  String get nik {
    return Intl.message(
      'NIK',
      name: 'nik',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password?`
  String get forget_password_mark {
    return Intl.message(
      'Forget Password?',
      name: 'forget_password_mark',
      desc: '',
      args: [],
    );
  }

  /// `Filename`
  String get filename {
    return Intl.message(
      'Filename',
      name: 'filename',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get date {
    return Intl.message(
      'Date',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `Time`
  String get time {
    return Intl.message(
      'Time',
      name: 'time',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Valid`
  String get valid {
    return Intl.message(
      'Valid',
      name: 'valid',
      desc: '',
      args: [],
    );
  }

  /// `Until`
  String get until {
    return Intl.message(
      'Until',
      name: 'until',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message(
      'City',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `Birth City`
  String get city_birth {
    return Intl.message(
      'Birth City',
      name: 'city_birth',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Mother Name`
  String get mother_name {
    return Intl.message(
      'Mother Name',
      name: 'mother_name',
      desc: '',
      args: [],
    );
  }

  /// `RT`
  String get rt {
    return Intl.message(
      'RT',
      name: 'rt',
      desc: '',
      args: [],
    );
  }

  /// `RW`
  String get rw {
    return Intl.message(
      'RW',
      name: 'rw',
      desc: '',
      args: [],
    );
  }

  /// `Area Code`
  String get area_code {
    return Intl.message(
      'Area Code',
      name: 'area_code',
      desc: '',
      args: [],
    );
  }

  /// `District`
  String get district {
    return Intl.message(
      'District',
      name: 'district',
      desc: '',
      args: [],
    );
  }

  /// `Sub District`
  String get sub_district {
    return Intl.message(
      'Sub District',
      name: 'sub_district',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phone {
    return Intl.message(
      'Phone Number',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Mobile Phone`
  String get mobile_phone {
    return Intl.message(
      'Mobile Phone',
      name: 'mobile_phone',
      desc: '',
      args: [],
    );
  }

  /// `Fax`
  String get fax {
    return Intl.message(
      'Fax',
      name: 'fax',
      desc: '',
      args: [],
    );
  }

  /// `Date of Birth`
  String get date_of_birth {
    return Intl.message(
      'Date of Birth',
      name: 'date_of_birth',
      desc: '',
      args: [],
    );
  }

  /// `Choose`
  String get choose {
    return Intl.message(
      'Choose',
      name: 'choose',
      desc: '',
      args: [],
    );
  }

  /// `Take Picture`
  String get take_picture {
    return Intl.message(
      'Take Picture',
      name: 'take_picture',
      desc: '',
      args: [],
    );
  }

  /// `Choose File`
  String get choose_file {
    return Intl.message(
      'Choose File',
      name: 'choose_file',
      desc: '',
      args: [],
    );
  }

  /// `Take Gallery`
  String get take_gallery {
    return Intl.message(
      'Take Gallery',
      name: 'take_gallery',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get completed {
    return Intl.message(
      'Completed',
      name: 'completed',
      desc: '',
      args: [],
    );
  }

  /// `Uncompleted`
  String get uncompleted {
    return Intl.message(
      'Uncompleted',
      name: 'uncompleted',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<I10n> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'id'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<I10n> load(Locale locale) => I10n.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
