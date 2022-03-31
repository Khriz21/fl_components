import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigoAccent;
  // ?static const Color primary
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // *Color primario de la aplicacion
    primaryColor: primary,

    // *appBar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),

    // *TextButton Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary),
    ),
  );
}
