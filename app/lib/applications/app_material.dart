import 'package:app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class MyMaterialApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Material App',
      home: new HomeScreen(),
      color: Colors.white
    );
  }
}