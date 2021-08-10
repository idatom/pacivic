import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pacivic/pages/splashscreen/Splash.dart';
import 'package:sizer/sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Play());
}

class Play extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            // ignore: unused_local_variable
            var init = SizerUtil().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                  primarySwatch: Colors.amber, fontFamily: "Poppins-R"),
              initialRoute: '/Splash',
              routes: {
                '/Splash': (context) => SplashView(),
              },
            );
          },
        );
      },
    );
  }
}
