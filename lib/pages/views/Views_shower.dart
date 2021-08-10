import 'package:flutter/material.dart';
import 'package:pacivic/pages/figur/Shower.dart';

class ViewsShower extends StatefulWidget {
  ViewsShower({Key key}) : super(key: key);

  @override
  _ViewsShowerState createState() => _ViewsShowerState();
}

class _ViewsShowerState extends State<ViewsShower> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: new Text(
          "IKON SHOWER",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.amber, fontFamily: "Poppins-M", fontSize: 16),
        ),
      ),
      body: Container(
        child: Shower(),
      ),
    );
  }
}
