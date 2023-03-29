import 'package:flutter/cupertino.dart';
import 'package:simple_alarm_application/src/home/ui/screen/home_screen.dart';

class Routes {
  static const String home = '/home';

  static final routes = <String, WidgetBuilder>{
    home: (context) => const HomeScreen(),
  };
}
