import 'package:flutter/material.dart';
import 'package:pacivic/pages/figur/Pantai.dart';

class ViewsPantai extends StatefulWidget {
  ViewsPantai({Key key}) : super(key: key);

  @override
  _ViewsPantaiState createState() => _ViewsPantaiState();
}

class _ViewsPantaiState extends State<ViewsPantai> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: new Text(
          "IKON PANTAI",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.amber, fontFamily: "Poppins-M", fontSize: 16),
        ),
      ),
      body: Container(
        child: Pantai(),
      ),
    );
  }
}
