import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pacivic/Layout.dart';
import 'package:pacivic/pages/figur/Tampil_figur.dart';

class Shop extends StatefulWidget {
  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  CollectionReference ref = FirebaseFirestore.instance.collection('shop');

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: StreamBuilder<QuerySnapshot>(
        stream: ref.get().asStream(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.docs.length,
              itemBuilder: (context, index) {
                Map data = snapshot.data.docs[index].data();
                return Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 5, right: 10, left: 10, bottom: 5),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => TampilFigur(
                                data, snapshot.data.docs[index].reference)));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15.0),
                                bottomLeft: Radius.circular(15.0),
                              ),
                              child: Image.network(
                                "${data['image']}",
                                width: 150,
                                height: 110,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Nama   : ${data['nama']}",
                                    ),
                                    Padding(padding: const EdgeInsets.all(5.0)),
                                    Text(
                                      "Update : ${data['date']}",
                                    ),
                                    Padding(padding: const EdgeInsets.all(5.0)),
                                    Text(
                                      "Times    : ${data['time']}",
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            return Center(
              child: CircularProgressIndicator(
                value: null,
                backgroundColor: Colors.blue,
                strokeWidth: 5.0,
              ),
            );
          }
        },
      ),
    );
  }
}
