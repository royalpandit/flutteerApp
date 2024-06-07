import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hells/src/screen/NeListScreen.dart';

class ActivitySplashScreen extends StatefulWidget {
  const ActivitySplashScreen({super.key});

  @override
  State<ActivitySplashScreen> createState() => _ActivitySplashScreenState();
}

class _ActivitySplashScreenState extends State<ActivitySplashScreen> {
  /* void initState() {
    super.initState();
   // Timer(Duration(seconds: 5), ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>NeListScreen())) );
  } */
  @override
  void initState() {
    super.initState();
    nextstart();
  }

  nextstart() async {
    print("Splash Screen");
    var _duration = Duration(seconds: 10);
    return new Timer(_duration, nextClass);
  }

  void nextClass() {
    print("DemoDemo Splash");
    try {
      Navigator.of(context).pushReplacementNamed('/NeListScreen');
    } catch (e) {
      print(e);
    }
    //Navigator.of(context).pushReplacementNamed('/NeListScreen');
  }

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/NeListScreen': (BuildContext context) => new NeListScreen(),
      },
      home: SafeArea(
        top: false,
        bottom: false,
        left: false,
        right: false,
        child: Scaffold(
          backgroundColor: Colors.red,
          body: Container(
              child: Container(
            alignment: Alignment(0, 0),
            decoration: BoxDecoration(color: Colors.red),
            child: Image.asset("assets/images/kbr.png"),
          )),
        ),
      ),
    );
  }
}
