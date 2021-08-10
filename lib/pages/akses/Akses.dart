import 'package:flutter/material.dart';
import 'package:pacivic/pages/akses/model/Admin.dart';
import 'package:pacivic/pages/akses/model/Link.dart';

class Akses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AksesPage();
  }
}

class AksesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 10),
            Admin(),
            SizedBox(height: 10),
            Link(),
          ],
        ),
      ),
    );
  }
}
