import 'package:flutter/material.dart';

class FontHelper {
  static final FontHelper _singleton = FontHelper._internal();
  factory FontHelper() => _singleton;
  FontHelper._internal();

  static const double font_14 = 14.0;
  static const double font_16 = 16.0;
  static const double font_18 = 18.0;
  static const double font_20 = 20.0;
  static const double font_22 = 22.0;
  static const double font_24 = 24.0;

  FontWeight regular = FontWeight.w400;
  FontWeight medium = FontWeight.w500;
  FontWeight bold = FontWeight.w600;
  FontWeight extrabold = FontWeight.w700;
}
