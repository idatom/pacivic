import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pacivic/pages/home/Home.dart';
import 'package:pacivic/pages/state/States.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<void> saveData() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      bool _seen = (prefs.getBool('seen') ?? false);
      if (_seen) {
        new Future.delayed(
          const Duration(seconds: 6),
          () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => PageHome()),
          ),
        );
      } else {
        await prefs.setBool('seen', true);
        new Future.delayed(
          const Duration(seconds: 6),
          () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => PageState()),
          ),
        );
      }
    }

    return new SplashScreen(
      seconds: 6,
      navigateAfterFuture: saveData(),
      image: Image.asset("assets/images/logo.png"),
      photoSize: 120.0,
      backgroundColor: Colors.amber,
      loaderColor: Colors.white,
    );
  }
}
