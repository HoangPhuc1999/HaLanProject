import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ha_lan/color.dart';
import 'package:ha_lan/route.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 2),
        () => Navigator.pushNamed(
              context,
              RoutesName.homepage,
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('images/Halan.png'),
            Image.asset('images/building.png'),
            Image.asset('images/Xeanvui.png'),

          ],
        ),
      ),
    );
  }
}
