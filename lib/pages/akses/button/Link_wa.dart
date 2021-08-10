import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:pacivic/Layout.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';

class Whatsapp extends StatefulWidget {
  Whatsapp({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WaState createState() => _WaState();
}

class _WaState extends State<Whatsapp> {
  void launchWhatsApp({
    @required int phone,
    @required String message,
  }) async {
    String url() {
      if (Platform.isAndroid) {
        // add the [https]
        return "https://wa.me/$phone/?text=${Uri.parse(message)}"; // new line
      } else {
        // add the [https]
        return "https://api.whatsapp.com/send?phone=$phone=${Uri.parse(message)}"; // new line
      }
    }

    if (await canLaunch(url())) {
      await launch(url());
    } else {
      throw 'Could not launch ${url()}';
    }
  }

  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Material(
      child: Container(
        width: SizeConfig.bH * 90,
        height: SizeConfig.bV * 7,
        // ignore: deprecated_member_use
        child: RaisedButton(
            color: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.call,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                AutoSizeText('Phone | akses ke whatsapp',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontFamily: "Poppins-R"),
                    minFontSize: 10,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis),
              ],
            ),
            onPressed: () {
              launchWhatsApp(
                  phone: 6289516846583,
                  message:
                      'Hello admin, saya mau registasi untuk mendapatkan layanan ?');
            }),
      ),
    );
  }
}
