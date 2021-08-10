import 'package:flutter/material.dart';
import 'package:pacivic/pages/profil/Model/Text_info.dart';

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProfilState();
  }
}

class ProfilState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/log.png",
                    fit: BoxFit.cover,
                    width: 150,
                    height: 150,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextInfo(),
                  Image.asset(
                    "assets/images/peta.jpg",
                    fit: BoxFit.cover,
                    width: 350,
                    height: 250,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
