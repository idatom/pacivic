import 'package:flutter/material.dart';
import 'package:pacivic/Layout.dart';
import 'package:url_launcher/url_launcher.dart';

class PesonaTugu extends StatefulWidget {
  PesonaTugu({Key key}) : super(key: key);

  @override
  _PesonaTuguState createState() => _PesonaTuguState();
}

class _PesonaTuguState extends State<PesonaTugu> {
  static double nLat;
  static double nLong;
  String nama;
  String texs;
  @override
  void initState() {
    super.initState();
    String a = "-7.939108";
    String b = "111.181488";
    nLat = double.parse(a);
    nLong = double.parse(b);
    nama = "Mojensu";
    texs =
        "Monumen Jenderal Sudirman dibangun di Desa Pakis Baru karena Sang Jenderal pernah bermarkas di sini. Ia dan pasukannya bermarkas di sini tanggal 1 April 1949 sampai 7 Juli 1949. Monumen Jenderal Sudirman ialah berupa patung Sang Jenderal setinggi sekitar delapan meter. Untuk sampai ke patung, terdapat 70 anak tangga yang harus dilalui. Anak tangga pertama berjumlah 45, kedua berjumlah delapan, dan ketiga berjumlah 17.";
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
                            "Rp. 2000 - Rp. 10000",
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
                        new Text("Pakisbaru, Kec.Nawangan, Kab.Pacitan"),
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
                      "https://firebasestorage.googleapis.com/v0/b/my-pacivic.appspot.com/o/pesona%2Fmaxresdefault%20(1).jpg?alt=media&token=35144ac4-cb06-407e-8599-82308b6b49fd",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                  ),
                  new Text(
                    "Monumen Jendral Soedirman",
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
