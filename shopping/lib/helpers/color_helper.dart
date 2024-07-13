import 'package:flutter/material.dart';

class ColorHelper {
  static final ColorHelper _singleton = ColorHelper._internal();
  factory ColorHelper() => _singleton;
  ColorHelper._internal();

  static const Color primaryColor = Colors.deepPurple;
  static const Color whiteColor = Colors.white;
  static const Color blackColor = Colors.black;
}
