import 'package:flutter/material.dart';
import 'package:skill_harvest_project/continuewithphone.dart';
import 'package:skill_harvest_project/loginscreen.dart';
import 'package:skill_harvest_project/signupscreen.dart';
import 'package:skill_harvest_project/splashmain.dart';
import 'package:skill_harvest_project/splashscreen1.dart';
import 'package:skill_harvest_project/splashscreen2.dart';
import 'package:skill_harvest_project/splashscreen3.dart';
import 'package:skill_harvest_project/verifyphone.dart';

class RouteManager {
  static String a = '/a';
  static String b = '/b';
  static String c = '/c';
  static String d = '/d';
  static String e = '/e';
  static String f = '/f';
  static String g = '/g';
  static String h = '/h';
  static String i = '/i';

  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/a':
        return MaterialPageRoute(builder: (context) => SplashMain());
      case '/b':
        return MaterialPageRoute(builder: (context) => SplashScreen1());
      case '/c':
        return MaterialPageRoute(builder: (context) => SplashScreen2());
      case '/d':
        return MaterialPageRoute(builder: (context) => SplashScreen3());
      case '/e':
        return MaterialPageRoute(builder: (context) => LoginScreen());
      case '/f':
        return MaterialPageRoute(builder: (context) => SignupScreen());
      case '/g':
        return MaterialPageRoute(builder: (context) => Continuewithphone());
      case '/h':
        return MaterialPageRoute(builder: (context) => VerifyphoneScreen());
      default:
        throw FormatException("Route Not Found");
    }
  }
}
