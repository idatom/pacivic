import 'package:flutter/material.dart';
import 'package:pacivic/Layout.dart';
import 'package:pacivic/pages/wisata/model/Card_bukit.dart';
import 'package:pacivic/pages/wisata/model/Card_danau.dart';
import 'package:pacivic/pages/wisata/model/Card_goa.dart';
import 'package:pacivic/pages/wisata/model/Card_pantai.dart';

class Wisata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WisataPage();
  }
}

class WisataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Destinasi Pantai",
                        style: TextStyle(
                          fontFamily: "Poppins-R",
                          color: Colors.black54,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: SizeConfig.sH * 0.200,
                      child: CardPantai(),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Destinasi Bukit",
                        style: TextStyle(
                          fontFamily: "Poppins-R",
                          color: Colors.black54,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: SizeConfig.sH * 0.200,
                      child: CardBukit(),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Destinasi Danau",
                        style: TextStyle(
                          fontFamily: "Poppins-R",
                          color: Colors.black54,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: SizeConfig.sH * 0.200,
                      child: CardDanau(),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Destinasi Goa",
                        style: TextStyle(
                          fontFamily: "Poppins-R",
                          color: Colors.black54,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: SizeConfig.sH * 0.200,
                      child: CardGoa(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
