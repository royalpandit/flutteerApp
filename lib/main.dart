import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hells/src/activity/login/ActivityBidHistory.dart';
import 'package:hells/src/activity/login/ActivityGameRate.dart';
import 'package:hells/src/activity/login/ActivityLogin.dart';
import 'package:hells/src/activity/login/ActivitySplashScreen.dart';
import 'package:hells/src/activity/login/HomeDashNEW.dart';
import 'package:hells/src/activity/login/HomeDashboard.dart';
import 'package:hells/src/screen/NeListScreen.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(SplashActive()
      // ActivityGameRate()
      // NeListScreen()
      // HomeDashNEW()
      // HomeDashboard()
      );

  //runApp(ActivityLogin());
}

class SplashActive extends StatefulWidget {
  const SplashActive({super.key});

  @override
  State<SplashActive> createState() => _SplashActive();
}

class _SplashActive extends State<SplashActive> {
  var isAuth = null;
  void initState() {
    super.initState();
    getAllData();
  }

  Future<void> getAllData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? action = prefs.getString('action');

    print("HelloThisS==>>>$action");

    setState(() {
      isAuth = action;
    });
  }

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      routes: <String, WidgetBuilder>{
        '/NeListScreen': (BuildContext context) =>
              isAuth==null ? new ActivityLogin() : NeListScreen(),
       // isAuth==null ? new ActivityLogin() : ActivityBidHistory(),
       // isAuth==null ? new ActivityLogin() : HomeDashNEW(),
      },
      home: splash(),
    ));
  }
}

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splash();
}

class _splash extends State<splash> {
  @override
  void initState() {
    super.initState();
    nextstart();
  }

  nextstart() async {
    print("Splash Screen");
    var _duration = Duration(milliseconds: 5);
    return new Timer(_duration, nextClass);
  }

  void nextClass() {
    print("DemoDemo Splash");
    Navigator.of(context).pushReplacementNamed('/NeListScreen');
    //Navigator.of(context).pushReplacementNamed('/NeListScreen');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        top: false,
        bottom: false,
        left: false,
        right: false,
        child: Scaffold(
          backgroundColor: Colors.red,
          body: Container(
            child: Animate(
              effects: [FadeEffect(duration: Duration(milliseconds: 3500))],
              child: Container(
                alignment: Alignment(0, 0),
                decoration: BoxDecoration(color: Colors.red),
                child: Lottie.asset("assets/images/ico.json"),
                //child: Image.asset("assets/images/kbr.png"),
              ),
            ),
            /* child: Container(
            alignment: Alignment(0, 0),
            decoration: BoxDecoration(color: Colors.red),
            child: Image.asset("assets/images/kbr.png"),
          ) */
          ),
        ),
      ),
    );
  }
}
