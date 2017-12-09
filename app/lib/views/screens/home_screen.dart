import 'package:app/config/routing.dart';
import 'package:app/localization/localization.dart';
import 'package:app/models/app_state.dart';
import 'package:app/views/applications/app_material.dart';
import 'package:app/views/widgets/appbar.dart';
import 'package:fluro/fluro.dart';
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
        return new HomeScreenViewModel(
          context: context,
          loading: store.state.loading,
        );
      },
      builder: (context, viewmodel) {
        return new Scaffold(
          appBar: getDefaultAppBar(context, AppLocalizations
              .of(context)
              .homeScreenTitle),
          body: new Column(
            children: <Widget>[
              new Container(
                child: new MaterialButton(
                  onPressed: viewmodel.onButtonPressed,
                  child: new Text('List of buttons'),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class HomeScreenViewModel {
  final bool loading;
  final BuildContext context;

  HomeScreenViewModel({@required this.context, this.loading});

  void onButtonPressed() {
    MyMaterialApp.router.navigateTo(context, Routes.buttonScreen, transition: TransitionType.inFromRight);
  }
}