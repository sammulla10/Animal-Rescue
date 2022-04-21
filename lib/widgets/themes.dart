import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

mixin MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        appBarTheme: AppBarTheme(
            elevation: 2,
            color: Colors.orange[400],
            iconTheme: IconThemeData(color: Colors.black)),
        primarySwatch: Colors.orange,
        primaryColor: Colors.orange[400],
        fontFamily: GoogleFonts.lato().fontFamily,
      );
  static Color creamcolor = Color(0xfff5f5f5);
  static Color darkbluishColor = Color(0xff403b58);
}
