import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:pacivic/Layout.dart';
import 'package:pacivic/pages/akses/button/Link_email.dart';
import 'package:pacivic/pages/akses/button/Link_wa.dart';

class Link extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LinkPage();
  }
}

class LinkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: SizeConfig.bH * 95,
      height: SizeConfig.bV * 72,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                "Registasi Admin ?",
                style: TextStyle(fontFamily: "Poppins-R", fontSize: 14),
              ),
              SizedBox(height: 20),
              Text(
                "Silahkan hubungi pengembang aplikasi terlebih dahulu untuk mendapatkan layanan admin yang bisa kalian pilih dibawah : ",
                textAlign: TextAlign.justify,
                style: TextStyle(fontFamily: "Poppins-R", fontSize: 14),
              ),
              SizedBox(height: 20),
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: AutoSizeText('* Klik untuk register via whatsapp',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                          fontFamily: "Poppins-R"),
                      minFontSize: 10,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis),
                ),
              ),
              SizedBox(height: 5),
              Whatsapp(),
              SizedBox(height: 20),
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: AutoSizeText('* Klik untuk register via email',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                          fontFamily: "Poppins-R"),
                      minFontSize: 10,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis),
                ),
              ),
              SizedBox(height: 5),
              Email(),
              SizedBox(
                height: SizeConfig.sH * 0.150,
              ),
              Text(
                "aplikasi versi 1.0.0",
                style: TextStyle(fontSize: 12, color: Colors.black45),
              )
            ],
          ),
        ),
      ),
    );
  }
}
