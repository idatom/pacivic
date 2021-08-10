import 'package:flutter/material.dart';
import 'package:pacivic/pages/home/model/Card_pesona.dart';
import 'package:pacivic/pages/home/model/News.dart';
import 'package:pacivic/pages/home/model/Slidebar.dart';
import 'package:pacivic/pages/home/model/Image.dart';

class HomeModel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Center(
              child: Column(
                children: [
                  SizedBox(height: 8),
                  SlideBar(),
                  Container(
                    child: ImagePage(),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(left: 8),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Pesona pacitan",
                        style: TextStyle(
                          fontFamily: "Poppins-R",
                          color: Colors.black54,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  CardPesona(),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(left: 8),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Seputar pacitan",
                        style: TextStyle(
                          fontFamily: "Poppins-R",
                          color: Colors.black54,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  News(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
