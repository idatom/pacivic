import 'package:flutter/material.dart';
import 'package:pacivic/pages/figur/Goa.dart';

class ViewsGoa extends StatefulWidget {
  ViewsGoa({Key key}) : super(key: key);

  @override
  _ViewsGoaState createState() => _ViewsGoaState();
}

class _ViewsGoaState extends State<ViewsGoa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: new Text(
          "IKON GOA",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.amber, fontFamily: "Poppins-M", fontSize: 16),
        ),
      ),
      body: Container(
        child: Goa(),
      ),
    );
  }
}
