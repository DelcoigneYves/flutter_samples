import 'dart:async';

import 'package:app/models/app_state.dart';
import 'package:flutter/cupertino.dart';
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
          body: _createBody(context, viewmodel),
        );
      },
    );
  }

  Widget _createBody(BuildContext context, ButtonScreenViewModel viewModel) {
    return new Padding(
      padding: const EdgeInsets.all(16.0),
      child: new SingleChildScrollView(
        physics: new BouncingScrollPhysics(),
        child: new Column(
          children: <Widget>[
            _createMaterialButton1(context, viewModel),
            _createFlatButton1(context, viewModel),
            _createRaisedButton1(context, viewModel),
            _createIconButton1(context, viewModel),
            _createFabButton1(context, viewModel),
            _createCupertinoButton1(context, viewModel),
            _createCloseButton1(context, viewModel),
            _createBackButton1(context, viewModel),
            _createButtonWithRoundedCorners1(context, viewModel),
            _createCustomStateButton1(context, viewModel),
            _createCupertinoLikeButton1(context, viewModel),
          ],
        ),
      ),
    );
  }

  Widget _createMaterialButton1(BuildContext context,
      ButtonScreenViewModel viewModel) {
    MaterialButton button = new MaterialButton(
      onPressed: viewModel.onButtonPress,
      child: _justSomeText(),
      color: Colors.lightGreen,
      highlightColor: Colors.green,
      colorBrightness: Brightness.light,
      elevation: 4.0,
      splashColor: Colors.blue,
      padding: const EdgeInsets.all(16.0),
    );

    return button;
  }

  Widget _createFlatButton1(BuildContext context,
      ButtonScreenViewModel viewModel) {
    FlatButton flatButton = new FlatButton(onPressed: viewModel.onButtonPress,
      child: new Container(
        decoration: new BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: new BorderRadius.all(new Radius.circular(16.0)),
            gradient: new LinearGradient(colors: [Colors.blue, Colors.green]),
            color: Colors.brown
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 16.0,
        ),
        child: _justSomeText(),
      ),
    );

    return flatButton;
  }

  Widget _createRaisedButton1(BuildContext context,
      ButtonScreenViewModel viewModel) {
    RaisedButton raisedButton = new RaisedButton(
      onPressed: viewModel.onButtonPress,
      elevation: 4.0,
      highlightElevation: 32.0,
      disabledElevation: 0.0,
      child: new Container(
        padding: const EdgeInsets.all(16.0),
        child: _justSomeText(),
      ),
      color: Colors.yellow,
      colorBrightness: Brightness.light,
    );

    return raisedButton;
  }

  Widget _createIconButton1(BuildContext context,
      ButtonScreenViewModel viewModel) {
    IconButton iconButton = new IconButton(
      icon: new Icon(
        Icons.title,

      ),
      onPressed: viewModel.onButtonPress,
      padding: const EdgeInsets.all(16.0),
      tooltip: 'An icon button',
      iconSize: 8.0,
      color: Colors.green,
      alignment: AlignmentDirectional.topStart,
    );

    return iconButton;
  }

  Widget _createFabButton1(BuildContext context,
      ButtonScreenViewModel viewModel) {
    return new FloatingActionButton(
      onPressed: viewModel.onButtonPress,
      backgroundColor: Colors.red,
      child: _justSomeIcon(),
      mini: false,
    );
  }

  Widget _justSomeText() {
    return new Text(
      "Just some text", style: new TextStyle(color: Colors.white70),);
  }

  Widget _justSomeIcon() {
    return new Icon(
        Icons.store
    );
  }

  Widget _createCupertinoButton1(BuildContext context,
      ButtonScreenViewModel viewModel) {
    return new CupertinoButton(
      onPressed: viewModel.onButtonPress,
      child: _justSomeText(),
      color: Colors.amber,
      borderRadius: new BorderRadius.all(new Radius.circular(16.0)),
      padding: const EdgeInsets.all(16.0),
      pressedOpacity: 0.5,
    );
  }

  Widget _createBackButton1(BuildContext context,
      ButtonScreenViewModel viewModel) {
    return new BackButton(
      color: Colors.red,
    );
  }

  Widget _createCloseButton1(BuildContext context,
      ButtonScreenViewModel viewModel) {
    return new CloseButton();
  }

  Widget _createButtonWithRoundedCorners1(BuildContext context,
      ButtonScreenViewModel viewModel) {
    return new RoundedButton(
      onTap: viewModel.onButtonPress,
    );
  }

  Widget _createCustomStateButton1(BuildContext context,
      ButtonScreenViewModel viewModel) {
    return new RoundedButtonWithCustomState();
  }

  Widget _createCupertinoLikeButton1(BuildContext context, ButtonScreenViewModel viewModel) {
    return new CupertinoLikeButton();
  }

}

class ButtonScreenViewModel {
  void onButtonPress() {

  }
}

class RoundedButton extends StatelessWidget {
  final VoidCallback onTap;

  RoundedButton({this.onTap});


  @override
  Widget build(BuildContext context) {
    return new Material(
      type: MaterialType.canvas,
      borderRadius: new BorderRadius.circular(16.0),
      color: Colors.green,
      child: new InkWell(
        onTap: onTap,
        splashColor: Colors.blue,
        highlightColor: Colors.red,
        child: new Container(
          child: new Text("Just some text"
          ),
          padding: const EdgeInsets.all(16.0),
        ),
      ),
    );
  }
}

class RoundedButtonWithCustomState extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new RoundedButtonWithCustomStateState();
  }
}

class RoundedButtonWithCustomStateState
    extends State<RoundedButtonWithCustomState> {

  Color color;

  @override
  void initState() {
    super.initState();
    color = Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      child: new Container(
        decoration: new BoxDecoration(
          color: color,
          borderRadius: new BorderRadius.circular(16.0),
        ),
        child: new Text("Just some text"),
        padding: const EdgeInsets.all(16.0),
      ),
      onTapDown: onTapDown,
      onTapUp: onTapUp,
      onTapCancel: onTapCancel,
    );
  }

  void onTapDown(TapDownDetails details) {
    setState(() {
      color = Colors.blue;
    });
  }

  void onTapUp(TapUpDetails details) {
    setState(() {
      color = Colors.red;
    });
  }

  void onTapCancel() {
    setState(() {
      color = Colors.yellow;
    });
  }
}

class CupertinoLikeButton extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new CupertinoLikeButtonState();
  }
}

class CupertinoLikeButtonState extends State<CupertinoLikeButton>
    with SingleTickerProviderStateMixin {
  static const Duration kFadeOutDuration = const Duration(milliseconds: 10);
  static const Duration kFadeInDuration = const Duration(milliseconds: 100);
  Tween<double> _opacityTween;

  AnimationController _animationController;

  void _setTween() {
    _opacityTween = new Tween<double>(
      begin: 1.0,
      end: 0.5,
    );
  }

  @override
  void initState() {
    super.initState();
    _animationController = new AnimationController(
      duration: const Duration(milliseconds: 200),
      value: 0.0,
      vsync: this,
    );
    _setTween();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _animationController = null;
    super.dispose();
  }

  @override
  void didUpdateWidget(CupertinoLikeButton old) {
    super.didUpdateWidget(old);
    _setTween();
  }

  bool _buttonHeldDown = false;

  void _handleTapDown(TapDownDetails event) {
    if (!_buttonHeldDown) {
      _buttonHeldDown = true;
      _animate();
    }
  }

  void _handleTapUp(TapUpDetails event) {
    if (_buttonHeldDown) {
      _buttonHeldDown = false;
      _animate();
    }
  }

  void _handleTapCancel() {
    if (_buttonHeldDown) {
      _buttonHeldDown = false;
      _animate();
    }
  }

  void _animate() {
    if (_animationController.isAnimating)
      return;
    final bool wasHeldDown = _buttonHeldDown;
    final Future<Null> ticker = _buttonHeldDown
        ? _animationController.animateTo(1.0, duration: kFadeOutDuration)
        : _animationController.animateTo(0.0, duration: kFadeInDuration);
    ticker.then((Null value) {
      if (mounted && wasHeldDown != _buttonHeldDown)
        _animate();
    });
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: onTap,
      onTapDown: _handleTapDown,
      onTapUp: _handleTapUp,
      onTapCancel: _handleTapCancel,
      child: new FadeTransition(
        opacity: _opacityTween.animate(new CurvedAnimation(
          parent: _animationController,
          curve: Curves.decelerate,
        )),
        child: new DecoratedBox(
          decoration: new BoxDecoration(
            borderRadius: new BorderRadius.circular(16.0),
            color: Colors.blue,
          ),
          child: new Padding(
            padding: const EdgeInsets.all(16.0),
            child: new Center(
              widthFactor: 1.0,
              heightFactor: 1.0,
              child: new Text("Just some text"),
            ),
          ),
        ),
      ),

    );
  }

  void onTap() {

  }
}