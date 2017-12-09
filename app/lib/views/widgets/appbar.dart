import 'package:flutter/material.dart';

Widget getDefaultAppBar(BuildContext context, String title) {
  return new AppBar(
    title: new Text(title),
    centerTitle: Theme.of(context).platform == TargetPlatform.iOS,
  );
}