import 'package:app/localization/localization.dart';
import 'package:app/models/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:meta/meta.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, HomeScreenViewModel>(
      converter: (store) {
        return new HomeScreenViewModel(loading: store.state.loading);
      },
      builder: (context, viewmodel) {
        return new Scaffold(
          appBar: new AppBar(
            centerTitle: Theme.of(context).platform == TargetPlatform.iOS,
            title: new Text(AppLocalizations.of(context).homeScreenTitle),
          ),
        );
      },
    );
  }
}

class HomeScreenViewModel {
  final bool loading;

  HomeScreenViewModel({@required this.loading});
}