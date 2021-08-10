import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:pacivic/Layout.dart';
import 'package:url_launcher/url_launcher.dart';

class Email extends StatefulWidget {
  Email({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WaState createState() => _WaState();
}

class _WaState extends State<Email> {
  void launchEmail() async {
    final String subject = "Registasi via email pacivic";
    final String stringText =
        "Hello admin, saya mau registasi untuk mendapatkan layanan ?";
    String uri =
        'mailto:idatom500@gmail.com?subject=${Uri.encodeComponent(subject)}&body=${Uri.encodeComponent(stringText)}';
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {
      print("No email client found");
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
            color: Colors.redAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14.0),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  AutoSizeText('Email   | akses ke email',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontFamily: "Poppins-R"),
                      minFontSize: 10,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis),
                ],
              ),
            ),
            onPressed: () {
              launchEmail();
            }),
      ),
    );
  }
}
