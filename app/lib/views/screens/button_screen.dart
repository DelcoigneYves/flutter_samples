import 'package:app/models/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:app/views/widgets/appbar.dart';

class ButtonScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new ButtonScreenState();
  }
}

class ButtonScreenState extends State<ButtonScreen> {

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, ButtonScreenViewModel>(
      converter: (store) {
        return new ButtonScreenViewModel();
      },
      builder: (context, viewmodel) {
        return new Scaffold(
          appBar: getDefaultAppBar(context, 'Button screen'),
        );
      },
    );
  }
}

class ButtonScreenViewModel {

}