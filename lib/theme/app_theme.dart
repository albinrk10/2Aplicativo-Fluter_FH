import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //color primario
      primaryColor: Colors.indigo,

      //AppBar Theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
        foregroundColor: primary,
      )));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    //color primario
    primaryColor: Colors.indigo,

    //AppBar Theme
    appBarTheme: const AppBarTheme(color: primary, elevation: 0),

    //scaffoldBackgroundColor: Colors.black
  );
}
