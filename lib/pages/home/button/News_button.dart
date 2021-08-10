import 'package:flutter/material.dart';
import 'package:pacivic/Layout.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsButton extends StatefulWidget {
  final String url, imageName, menuName;
  const NewsButton(
    this.url,
    this.imageName,
    this.menuName,
  );
  @override
  MenuButtonState createState() => MenuButtonState();
}

class MenuButtonState extends State<NewsButton> {
  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: TextButton(
        onPressed: () {
          launchURL(widget.url);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: SizeConfig.sW * 0.46,
              height: SizeConfig.sH * 0.08,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), // if you need this
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset(
                    widget.imageName,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            Text(
              widget.menuName,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff98a1bd),
                fontSize: 14,
                fontFamily: "Poppins-R",
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
