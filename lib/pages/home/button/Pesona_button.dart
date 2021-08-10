import 'package:flutter/material.dart';
import 'package:pacivic/Layout.dart';

class PesonaButton extends StatefulWidget {
  final Widget _widget;
  final String imageName, menuName;
  const PesonaButton(
    this._widget,
    this.imageName,
    this.menuName,
  );
  @override
  MenuButtonState createState() => MenuButtonState();
}

class MenuButtonState extends State<PesonaButton> {
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
            width: SizeConfig.sW * 0.44,
            height: SizeConfig.sH * 0.15,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8), // if you need this
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.network(
                  widget.imageName,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
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
    );
  }
}
