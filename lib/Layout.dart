import 'package:flutter/widgets.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double sW;
  static double sH;
  static double bH;
  static double bV;
  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    sW = _mediaQueryData.size.width;
    sH = _mediaQueryData.size.height;
    bH = sW / 100;
    bV = sH / 100;
  }
}
