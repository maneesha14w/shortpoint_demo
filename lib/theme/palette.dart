import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Palette {
  static const Color lightBlue = Color(0xFF3556AB);
  static const Color darkBlue = Color(0xFF0D2972);
  static const Color customGreen = Color(0xFF9EB031);
  static const Color customBlack = Color(0xFF071D55);

  static const appBarTheme = AppBarTheme(color: Colors.amber);

  static const textStyleNormal = TextStyle(
    color: Colors.white,
    fontSize: 16.0,
  );

  static const textStyleItalic = TextStyle(
      color: Colors.white,
      fontStyle: FontStyle.italic,
      fontSize: 25.0,
      fontWeight: FontWeight.w100);
}
