import 'package:flutter/material.dart';
import 'package:pacivic/Layout.dart';
import 'package:pacivic/pages/home/button/Slidebar_button.dart';
import 'package:pacivic/pages/views/Views_bistro.dart';
import 'package:pacivic/pages/views/Views_bukit.dart';
import 'package:pacivic/pages/views/Views_danau.dart';
import 'package:pacivic/pages/views/Views_goa.dart';
import 'package:pacivic/pages/views/Views_pantai.dart';
import 'package:pacivic/pages/views/Views_room.dart';
import 'package:pacivic/pages/views/Views_shop.dart';
import 'package:pacivic/pages/views/Views_shower.dart';
import 'package:pacivic/pages/views/Views_tugu.dart';

class SlideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Slide();
  }
}

class Slide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          children: [
            SlideBarButton(ViewsPantai(), "assets/icons/1.png", "Pantai"),
            SlideBarButton(ViewsDanau(), "assets/icons/2.png", "Danau"),
            SlideBarButton(ViewsGoa(), "assets/icons/3.png", "Goa"),
            SlideBarButton(ViewsBukit(), "assets/icons/4.png", "Bukit"),
            SlideBarButton(ViewsTugu(), "assets/icons/8.png", "Tugu"),
            SlideBarButton(ViewsShower(), "assets/icons/9.png", "Shower"),
            SlideBarButton(ViewsRoom(), "assets/icons/5.png", "Room"),
            SlideBarButton(ViewsShop(), "assets/icons/6.png", "Shop"),
            SlideBarButton(ViewsBistro(), "assets/icons/7.png", "Bistro"),
          ],
        ),
      ),
    );
  }
}
