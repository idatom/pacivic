import 'package:flutter/material.dart';
import 'package:pacivic/pages/figur/Bukit.dart';

class ViewsBukit extends StatefulWidget {
  ViewsBukit({Key key}) : super(key: key);

  @override
  _ViewsBukitState createState() => _ViewsBukitState();
}

class _ViewsBukitState extends State<ViewsBukit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: new Text(
          "IKON BUKIT",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.amber, fontFamily: "Poppins-M", fontSize: 16),
        ),
      ),
      body: Container(
        child: Bukit(),
      ),
    );
  }
}
