import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:pacivic/Layout.dart';

class Admin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AdminPage();
  }
}

class AdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // ignore: non_constant_identifier_names
    Future<void> Admin() {
      return showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Center(
              child: Text(
                "PENGEMBANG",
                style: TextStyle(color: Colors.amber, fontFamily: "Poppins-R"),
              ),
            ),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Image.asset(
                  "assets/images/admin.jpg",
                  width: SizeConfig.bH * 80,
                  height: SizeConfig.bV * 25,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.fromLTRB(80.0, 5.0, 80.0, 0),
                // ignore: deprecated_member_use
                child: FlatButton(
                  color: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Text(
                    "Exit",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          );
        },
      );
    }

    return Container(
      width: SizeConfig.bH * 95,
      height: SizeConfig.sH * 0.07,
      // ignore: deprecated_member_use
      child: RaisedButton(
          color: Colors.amber,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Center(
            child: Stack(
              children: [
                Container(
                  width: SizeConfig.bV * 45,
                  child: Align(
                    alignment: Alignment.center,
                    child: AutoSizeText('+ DEVELOPERS -------------- O',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontFamily: "Poppins-R"),
                        minFontSize: 10,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis),
                  ),
                ),
              ],
            ),
          ),
          onPressed: () {
            Admin();
          }),
    );
  }
}
