import 'package:flutter/material.dart';

class ColorPalette {
  static Color get primaryColor => const Color(0xFF253334);
  static Color get primaryColor2 => const Color(0xFF2D393B);
  static Color get nearlyBlack => const Color(0xFF2B2B2B);
  static Color get grey => const Color(0xFFE3E3E3);
  static Color get lightGrey => const Color(0xFFF7F7F7);
  static Color get black => const Color(0xFF000000);

 static const MaterialColor primaryBlack = MaterialColor(
   0xFF000000,
    <int, Color>{
      50: Color(0xFF000000),
      100: Color(0xFF000000),
      200: Color(0xFF000000),
      300: Color(0xFF000000),
      400: Color(0xFF000000),
      500: Color(0xFF000000),
      600: Color(0xFF000000),
      700: Color(0xFF000000),
      800: Color(0xFF000000),
      900: Color(0xFF000000),
    },
  );

}
