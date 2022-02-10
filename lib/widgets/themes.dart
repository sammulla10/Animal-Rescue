import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

mixin MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        appBarTheme: AppBarTheme(
            elevation: 0.0,
            color: Colors.orange[400],
            iconTheme: IconThemeData(color: Colors.black)),
        primarySwatch: Colors.orange,
        primaryColor: Colors.orange[400],
        fontFamily: GoogleFonts.lato().fontFamily,
      );
}
