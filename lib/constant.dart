import 'package:flutter/material.dart';

class Constants {
  static double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;
}

class WebPrimary {
  static const Color kPrimaryColor = Color.fromARGB(250, 182, 50, 232);
  static const Color kDarkColor = Color.fromARGB(240, 59, 53, 53);
}
