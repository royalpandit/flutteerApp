import 'package:flutter/material.dart';
import 'package:hells/src/activity/login/ActivityGameRate.dart';
import 'package:hells/src/activity/login/ActivityLogin.dart';
import 'package:hells/src/activity/login/ActivitySplashScreen.dart';
import 'package:hells/src/activity/login/HomeDashNEW.dart';
import 'package:hells/src/network/utill/routes/routes_names.dart';
 

class Routes {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case (RouteNames.home):
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeDashNEW());
      case (RouteNames.login):
        return MaterialPageRoute(
            builder: (BuildContext context) => const ActivityLogin());
      case (RouteNames.signupScreen):
        return MaterialPageRoute(
            builder: (BuildContext context) => const ActivityGameRate());
      case (RouteNames.splashScreen):
        return MaterialPageRoute(
            builder: (BuildContext context) => const ActivitySplashScreen());
      
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text("No route is configured"),
            ),
          ),
        );
    }
  }
}
