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
