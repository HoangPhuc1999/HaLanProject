import 'package:flutter/material.dart';
import 'package:ha_lan/route.dart';
import 'package:ha_lan/splash_screen.dart';
import 'package:ha_lan/style.dart';
import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeData,
      home: SplashScreen(),
      initialRoute: RoutesName.splashscreen,
      onGenerateRoute: (RouteSettings settings) => routeSetting(settings),
    );
  }
}


MaterialPageRoute<dynamic> routeSetting(RouteSettings settings) {
  final dynamic data = settings.arguments;
  switch (settings.name) {
    case RoutesName.splashscreen:
      return MaterialPageRoute<dynamic>(
        builder: (BuildContext buildercontext) => SplashScreen(),
        settings: const RouteSettings(name: RoutesName.splashscreen),
      );
    case RoutesName.homepage:
      return MaterialPageRoute<dynamic>(
        builder: (BuildContext buildercontext) => MyHomePage(),
        settings: const RouteSettings(name: RoutesName.homepage),
      );


  }
}