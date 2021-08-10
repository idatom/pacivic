import 'package:flutter/material.dart';
import 'package:pacivic/pages/figur/Tugu.dart';

class ViewsTugu extends StatefulWidget {
  ViewsTugu({Key key}) : super(key: key);

  @override
  _ViewsTuguState createState() => _ViewsTuguState();
}

class _ViewsTuguState extends State<ViewsTugu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: new Text(
          "IKON TUGU",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.amber, fontFamily: "Poppins-M", fontSize: 16),
        ),
      ),
      body: Container(
        child: Tugu(),
      ),
    );
  }
}
