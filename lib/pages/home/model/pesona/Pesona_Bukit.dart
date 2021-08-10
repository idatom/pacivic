import 'package:flutter/material.dart';
import 'package:pacivic/Layout.dart';
import 'package:url_launcher/url_launcher.dart';

class PesonaBukit extends StatefulWidget {
  PesonaBukit({Key key}) : super(key: key);

  @override
  _PesonaBukitState createState() => _PesonaBukitState();
}

class _PesonaBukitState extends State<PesonaBukit> {
  static double nLat;
  static double nLong;
  String nama;
  String texs;
  @override
  void initState() {
    super.initState();
    String a = "-8.218658";
    String b = "111.067028";
    nLat = double.parse(a);
    nLong = double.parse(b);
    nama = "Sentono Gentong";
    texs =
        "Sentono Gentong adalah sebuah bukit karang terjal yang dulunya digunakan sebagai tempat pertapaan. Namun lantaran pengaruh modernisasi, kawasan sekitarnya perlahan berubah menjadi destinasi wisata.Masyarakat sekitar dan sejumlah budayawan Pacitan juga meyakini tempat ini punya nilai sakral serta peran penting dalam sejarah perkembangan tanah Jawa. Konon pada Abad ke-18 puncak perbukitan di sekitar sini dijadikan tempat peletakan tumbal untuk menjaga keseimbangan alam di Pulau Jawa.";
    print("nama : " + nama);
  }

  void _launchMapsUrl(double lat, double lon) async {
    final url = 'https://www.google.com/maps/search/?api=1&query=$lat,$lon';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Gagal"),
            content: Text('Maps tidak ada : $url'),
            actions: [
              // ignore: deprecated_member_use
              FlatButton(
                child: Text("Ok"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: new Text(
          "$nama",
          style: TextStyle(
              color: Colors.amber, fontFamily: "Poppins-M", fontSize: 16),
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(top: 15, left: 15),
                          child: new Text(
                            "Harga tiket : ",
                            textAlign: TextAlign.justify,
                          )),
                      Padding(
                          padding: EdgeInsets.only(top: 15, left: 10),
                          child: new Text(
                            "Rp. 2000 - Rp. 20000",
                            textAlign: TextAlign.justify,
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: new Text(
                            "Pelayanan  : ",
                            textAlign: TextAlign.justify,
                          )),
                      Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: new Text(
                            "Setiap Hari",
                            textAlign: TextAlign.justify,
                          )),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: <Widget>[
                        new Text("Dadapan, Kec. Pringkuku, Kab. Pacitan"),
                        Spacer(),
                        SizedBox(
                          height: 10.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10, right: 10, left: 10),
            child: Card(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 5.0,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: new Image.network(
                      "https://firebasestorage.googleapis.com/v0/b/my-pacivic.appspot.com/o/pesona%2Fax.jpg?alt=media&token=b43ace77-f32a-4b45-b3dc-2c8fedd9152c",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                  ),
                  new Text(
                    "Sentono Gentong",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                      padding: EdgeInsets.all(15.0),
                      child: new Text(
                        "$texs",
                        textAlign: TextAlign.justify,
                      )),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: SizeConfig.bH * 80,
                      height: SizeConfig.bV * 7,
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                          color: Colors.green.shade400,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.my_location_sharp,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Jelajah    |    akses ke gmaps",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          onPressed: () {
                            _launchMapsUrl(nLat, nLong);
                          }),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
