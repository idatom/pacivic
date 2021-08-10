import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pacivic/Layout.dart';
import 'package:pacivic/pages/wisata/model/ShowData.dart';

class CardPantai extends StatefulWidget {
  @override
  _LihatPantaiCardState createState() => _LihatPantaiCardState();
}

class _LihatPantaiCardState extends State<CardPantai> {
  CollectionReference ref = FirebaseFirestore.instance.collection('pantai');

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Container(
        child: StreamBuilder<QuerySnapshot>(
          stream: ref.get().asStream(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemExtent: 210.0,
                scrollDirection: Axis.horizontal,
                itemCount: snapshot.data.docs.length,
                itemBuilder: (context, index) {
                  Map data = snapshot.data.docs[index].data();
                  return Container(
                    child: Padding(
                      padding:
                      const EdgeInsets.only(top: 5, right: 15, left: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ShowData(
                                  data, snapshot.data.docs[index].reference)));
                        },
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x3f000000),
                                      blurRadius: 2,
                                      offset: Offset(0, 2),
                                    ),
                                  ],
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 5,
                                  vertical: 5,
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      width: SizeConfig.bH * 44,
                                      height: SizeConfig.bV * 15,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Image.network(
                                        "${data['image']}",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "${data['nama']}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xff98a1bd),
                                        fontSize: 12,
                                        fontFamily: "Poppins-R",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 3,),
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
      ),
    );
  }
}
