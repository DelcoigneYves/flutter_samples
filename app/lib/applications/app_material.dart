import 'package:app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:app/localization/localization.dart';

class MyMaterialApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      localizationsDelegates: [
        new AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      title: 'Material App',
      home: new HomeScreen(),
      supportedLocales: [
        const Locale('en', 'US'), // English
        const Locale('fr', 'FR'), // French
      ],
      localeResolutionCallback: (Locale locale, _) {
        return locale;
      },
    );
  }
}