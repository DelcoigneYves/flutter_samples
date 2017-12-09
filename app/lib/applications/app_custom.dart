import 'package:app/screens/home_screen.dart';
import 'package:flutter/widgets.dart';

class MyCustomApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new WidgetsApp(
        onGenerateRoute: _generateRoute,
        color: const Color.fromARGB(0xFF, 0x42, 0xA5, 0xF5),
        title: 'Title');
  }

  Route<Null> _generateRoute(RouteSettings settings) {
    return new PageRouteBuilder(pageBuilder: (BuildContext context, _, __) {
      return new HomeScreen();
    });
  }
}