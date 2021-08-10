import 'package:flutter/material.dart';
import 'package:pacivic/pages/figur/Room.dart';

class ViewsRoom extends StatefulWidget {
  ViewsRoom({Key key}) : super(key: key);

  @override
  _ViewsRoomState createState() => _ViewsRoomState();
}

class _ViewsRoomState extends State<ViewsRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: new Text(
          "IKON ROOM",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.amber, fontFamily: "Poppins-M", fontSize: 16),
        ),
      ),
      body: Container(
        child: Room(),
      ),
    );
  }
}
