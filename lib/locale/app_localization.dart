import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../l10n/messages_all.dart';

class AppLocalization {

  static Future<AppLocalization> load(Locale locale) {
    final String name = locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      return AppLocalization();
    });
  }

  static AppLocalization of(BuildContext context) {
    return Localizations.of<AppLocalization>(context, AppLocalization);
  }

  // list of locales
  String get title {
    return Intl.message(
      'Farmi Assist',
      name: 'title',
      desc: 'App name ',
    );
  }
  String get greeting {
    return Intl.message(
      'Welcome',
      name: 'greeting',
      desc: 'App name ',
    );
  }
  String get enter {
    return Intl.message(
      'Enter Your Problem',
      name: 'enter',
      desc: 'App name ',
    );
  }
  String get submit{
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: 'App name ',
    );
  }
  String get erase{
    return Intl.message(
      'Erase',
      name: 'erase',
      desc: 'App name ',
    );
  }
  String get help{
    return Intl.message(
      'Help',
      name: 'help',
      desc: 'App name ',
    );
  }
  String get exit{
    return Intl.message(
      'Exit App',
      name: 'exit',
      desc: 'App name ',
    );
  }
  String get language{
    return Intl.message(
      'Language',
      name: 'language',
      desc: 'App name ',
    );
  }
  String get querey{
    return Intl.message(
      'Ask Querey',
      name: 'querey',
      desc: 'App name ',
    );
  }
  String get library{
    return Intl.message(
      'Agri-Library',
      name: 'library',
      desc: 'App name ',
    );
  }
  String get use{
    return Intl.message(
      'How to use Application',
      name: 'use',
      desc: 'App name ',
    );
  }
  String get about{
    return Intl.message(
      'About Us',
      name: 'about',
      desc: 'App name ',
    );
  }
  String get close{
    return Intl.message(
      'Close',
      name: 'close',
      desc: 'App name ',
    );
  }
  String get result{
    return Intl.message(
      'Result',
      name: 'result',
      desc: 'App name ',
    );
  }
  String get helpdata{
    return Intl.message(
      'Enter the query in the text field. Seperate multiple queries with full stops. Tap on the mic for voice input. Tap in the speaker icon to narrate. Tap on the green button to get results, red to delete whole query, grey to close the app.',
      name: 'helpdata',
      desc: 'App name ',
    );
  }
  String get moto{
    return Intl.message(
      'extending our hand to help',
      name: 'moto',
      desc: 'App name ',
    );
  }
  String get shreya{
    return Intl.message(
      'Shreya Patil',
      name: 'shreya',
      desc: 'App name ',
    );
  }
  String get pratik{
    return Intl.message(
      'Pratik Patil',
      name: 'pratik',
      desc: 'App name ',
    );
  }
  String get jyoti{
    return Intl.message(
      'Jyoti Poddar',
      name: 'jyoti',
      desc: 'App name ',
    );
  }
  String get sd{
    return Intl.message(
      'Software Developer',
      name: 'sd',
      desc: 'App name ',
    );
  }
  String get git{
    return Intl.message(
      'Git Repository',
      name: 'git',
      desc: 'App name ',
    );
  }
  String get tf {
    return Intl.message(
      'Press button to start speaking',
      name: 'tf',
      desc: 'App name ',
    );
  }
  String get pb {
    return Intl.message(
      'Please tell us your problem',
      name: 'pb',
      desc: 'App name ',
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  final Locale overriddenLocale;

  const AppLocalizationDelegate(this.overriddenLocale);

  @override
  bool isSupported(Locale locale) => ['en', 'kn', 'hi'].contains(locale.languageCode);

  @override
  Future<AppLocalization> load(Locale locale) => AppLocalization.load(locale);

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalization> old) => false;
}