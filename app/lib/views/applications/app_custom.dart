import 'package:app/localization/localization.dart';
import 'package:app/views/screens/home_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyCustomApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new WidgetsApp(
        localizationsDelegates: [
          new AppLocalizationsDelegate(),
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en', 'US'), // English
          const Locale('fr', 'FR'), // French
        ],
        onGenerateRoute: _generateRoute,
        color: const Color.fromARGB(0xFF, 0x42, 0xA5, 0xF5),
        title: 'Custom app');
  }

  Route<Null> _generateRoute(RouteSettings settings) {
    return new PageRouteBuilder(pageBuilder: (BuildContext context, _, __) {
      return new HomeScreen();
    });
  }
}