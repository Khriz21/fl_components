import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;
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

    //
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          primary: primary, shape: const StadiumBorder()),
    ),

    // *floating Button Theme
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 10,
    ),

    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: primary),
      hoverColor: primary,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
    ),
  );
}
