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
    return new StoreConnector<AppState, _ViewModel>(
      converter: (store) {
        return new _ViewModel(loading: store.state.loading);
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

class _ViewModel {
  final bool loading;

  _ViewModel({@required this.loading});
}