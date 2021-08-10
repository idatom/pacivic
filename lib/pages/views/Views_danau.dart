import 'package:flutter/material.dart';
import 'package:pacivic/pages/figur/Danau.dart';

class ViewsDanau extends StatefulWidget {
  ViewsDanau({Key key}) : super(key: key);

  @override
  _ViewsDanauState createState() => _ViewsDanauState();
}

class _ViewsDanauState extends State<ViewsDanau> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: new Text(
          "ICON DANAU",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.amber, fontFamily: "Poppins-M", fontSize: 16),
        ),
      ),
      body: Container(
        child: Danau(),
      ),
    );
  }
}
