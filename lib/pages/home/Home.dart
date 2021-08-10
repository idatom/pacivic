import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:pacivic/pages/akses/Akses.dart';
import 'package:pacivic/pages/home/model/Home_model.dart';
import 'package:pacivic/pages/profil/Profil.dart';
import 'package:pacivic/pages/wisata/Wisata.dart';

class PageHome extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<PageHome> {
  int currentPage = 0;

  GlobalKey bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
          child: _getPage(currentPage),
        ),
      ),
      bottomNavigationBar: Container(
        child: FancyBottomNavigation(
          barBackgroundColor: Colors.white,
          circleColor: Colors.amber,
          inactiveIconColor: Colors.black12,
          tabs: [
            TabData(
              iconData: Icons.home,
              title: "Home",
            ),
            TabData(
              iconData: Icons.add_a_photo,
              title: "Figur",
            ),
            TabData(
              iconData: Icons.local_police_sharp,
              title: "Info",
            ),
            TabData(
              iconData: Icons.person,
              title: "Akses",
            ),
          ],
          initialSelection: 0,
          key: bottomNavigationKey,
          onTabChangedListener: (position) {
            setState(() {
              currentPage = position;
            });
          },
        ),
      ),
    );
  }

  _getPage(int page) {
    switch (page) {
      case 0:
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: new Center(
              child: new Text(
                "MENU UTAMA",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black45,
                    fontFamily: "Poppins-M",
                    fontSize: 16),
              ),
            ),
          ),
          body: Center(
            child: HomeModel(),
          ),
        );
      case 1:
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: new Center(
              child: new Text(
                "PARIWISATA",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black45,
                    fontFamily: "Poppins-M",
                    fontSize: 16),
              ),
            ),
          ),
          body: Center(
            child: Wisata(),
          ),
        );
      case 2:
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: new Center(
              child: new Text(
                "KOTA PACITAN",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black45,
                    fontFamily: "Poppins-M",
                    fontSize: 16),
              ),
            ),
          ),
          body: Center(
            child: Profil(),
          ),
        );
      case 3:
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: new Center(
              child: new Text(
                "PACIVIC",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black45,
                    fontFamily: "Poppins-M",
                    fontSize: 16),
              ),
            ),
          ),
          body: Center(
            child: Akses(),
          ),
        );
    }
  }
}
