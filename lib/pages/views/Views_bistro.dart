import 'package:flutter/material.dart';
import 'package:pacivic/pages/figur/Bistro.dart';

class ViewsBistro extends StatefulWidget {
  ViewsBistro({Key key}) : super(key: key);

  @override
  _ViewsBistroState createState() => _ViewsBistroState();
}

class _ViewsBistroState extends State<ViewsBistro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: new Text(
          "IKON BISTRO",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.amber, fontFamily: "Poppins-M", fontSize: 16),
        ),
      ),
      body: Container(
        child: Bistro(),
      ),
    );
  }
}
