import 'package:flutter/material.dart';
import 'package:pacivic/Layout.dart';

class SlideBarButton extends StatefulWidget {
  final Widget _widget;
  final String imageName, menuName;
  const SlideBarButton(
    this._widget,
    this.imageName,
    this.menuName,
  );
  @override
  MenuButtonState createState() => MenuButtonState();
}

class MenuButtonState extends State<SlideBarButton> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return TextButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => widget._widget));
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
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
              horizontal: 20,
              vertical: 20,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: SizeConfig.bH * 6,
                  height: SizeConfig.bV * 3,
                  child: Image.asset(
                    widget.imageName,
                    width: 20,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text(
            widget.menuName,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 14,
              fontFamily: "Poppins-R",
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
