import 'package:app/config/routing.dart';
import 'package:app/models/app_state.dart';
import 'package:app/views/screens/home_screen.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:app/localization/localization.dart';
import 'package:app/reducers/app_state_reducer.dart';

import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

class MyMaterialApp extends StatelessWidget {
  final store = new Store<AppState>(
    appReducer,
    initialState: new AppState(loading: false)
  );
  static Router router;

  MyMaterialApp(){
    router = new Router();
    Routes.configureRoutes(router);
  }

  @override
  Widget build(BuildContext context) {
    return new StoreProvider(
        store: store,
        child: _createApp(context));
  }

  Widget _createApp(BuildContext context) {
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