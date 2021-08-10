import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pacivic/pages/state/Page/Boarding.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Next();
  }
}

class Next extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Material(
      child: Center(
        child: OnBoardingPage(),
      ),
    );
  }
}
