import 'package:flutter/material.dart';

class ScreenConfiguration {

  static const double minimumWidthWebLayout = 1080;

  static bool isMobileLayout(BuildContext context) {
    final screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    return screenWidth < minimumWidthWebLayout;
  }

}