import 'package:flutter/material.dart';
import 'package:pacivic/pages/figur/Shop.dart';

class ViewsShop extends StatefulWidget {
  ViewsShop({Key key}) : super(key: key);

  @override
  _ViewsShopState createState() => _ViewsShopState();
}

class _ViewsShopState extends State<ViewsShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: new Text(
          "IKON SHOP",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.amber, fontFamily: "Poppins-M", fontSize: 16),
        ),
      ),
      body: Container(
        child: Shop(),
      ),
    );
  }
}
