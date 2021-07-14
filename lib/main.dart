
import "package:flutter/material.dart";
import 'screens/Home.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'locale/app_localization.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  AppLocalizationDelegate _localeOverrideDelegate = AppLocalizationDelegate(Locale('en','US'));
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Farmi Assist",
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          _localeOverrideDelegate
        ],
        supportedLocales: [
          const Locale('en', 'US'),
          const Locale('kn', 'IN'),
          const Locale('hi','IN')
        ],
        home: Home()
    );
  }
}






