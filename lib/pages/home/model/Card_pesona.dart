import 'package:flutter/material.dart';
import 'package:pacivic/Layout.dart';
import 'package:pacivic/pages/home/button/Pesona_button.dart';
import 'package:pacivic/pages/home/model/pesona/Pesona_Bukit.dart';
import 'package:pacivic/pages/home/model/pesona/Pesona_Goa.dart';
import 'package:pacivic/pages/home/model/pesona/Pesona_Pantai.dart';
import 'package:pacivic/pages/home/model/pesona/Pesona_Tugu.dart';

class CardPesona extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Pesona();
  }
}

class Pesona extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PesonaButton(
                        PesonaPantai(),
                        "https://firebasestorage.googleapis.com/v0/b/my-pacivic.appspot.com/o/pesona%2Fka.jpg?alt=media&token=2e8840c2-89c4-4136-935c-919b4da14cfd",
                        "Pantai Kasap"),
                    PesonaButton(
                        PesonaTugu(),
                        "https://firebasestorage.googleapis.com/v0/b/my-pacivic.appspot.com/o/pesona%2Fmaxresdefault%20(1).jpg?alt=media&token=35144ac4-cb06-407e-8599-82308b6b49fd",
                        "Mojensu"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PesonaButton(
                        PesonaGoa(),
                        "https://firebasestorage.googleapis.com/v0/b/my-pacivic.appspot.com/o/pesona%2Fagg.jpg?alt=media&token=34deceaa-171c-4998-9f6a-61625b8f1eff",
                        "Goa Gong"),
                    PesonaButton(
                        PesonaBukit(),
                        "https://firebasestorage.googleapis.com/v0/b/my-pacivic.appspot.com/o/pesona%2Fax.jpg?alt=media&token=b43ace77-f32a-4b45-b3dc-2c8fedd9152c",
                        "Sentono Gentong"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
