import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Palette {
  static const Color raisinBlack = Color(0xff212121);
  static const Color sunburntCyclops = Color(0xfff4434e);
  static const Color sunglow = Color(0xffffc43a);
}

ThemeData getTheme(BuildContext context) => ThemeData(
      textTheme: GoogleFonts.latoTextTheme().apply(
        bodyColor: Colors.white,
        displayColor: Colors.white,
      ),
      primaryTextTheme: GoogleFonts.latoTextTheme().apply(
        bodyColor: Colors.white,
        displayColor: Colors.white,
      ),
      iconTheme: const IconThemeData(
        color: Colors.white,
        size: 36.0,
      ),
      appBarTheme: const AppBarTheme(
        color: Palette.raisinBlack,
      ),
      scaffoldBackgroundColor: Palette.raisinBlack,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Palette.raisinBlack,
        selectedItemColor: Palette.sunburntCyclops,
      ),
    );
