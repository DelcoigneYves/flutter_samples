import 'package:app/views/screens/button_screen.dart';
import 'package:flutter/painting.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

var demoRouteHandler = new Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return new ButtonScreen();
});

class Routes {

  static String buttonScreen = "/buttons";

  static void configureRoutes(Router router) {
    router.define(buttonScreen, handler: demoRouteHandler);
  }

}