import 'package:app/localization/localization.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: Theme.of(context).platform == TargetPlatform.iOS,
        title: new Text(AppLocalizations.of(context).homeScreenTitle),
      ),
    );
  }
}