import 'package:flutter/material.dart';
import 'package:pacivic/pages/home/button/News_button.dart';

class News extends StatefulWidget {
  News({Key key}) : super(key: key);

  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            NewsButton(
              'https://pacitankab.go.id',
              "assets/images/log.png",
              "Website",
            ),
            NewsButton(
              'https://www.jpnn.com/tag/pacitan',
              "assets/images/page_home/news.png",
              "Berita",
            ),
            NewsButton(
              'https://www.instagram.com/pacitanwonderful/?hl=id',
              "assets/images/page_home/aa.jpg",
              "Instagram",
            ),
          ],
        ),
      ),
    );
  }
}
