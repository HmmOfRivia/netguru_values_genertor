import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme {
  static final lightTheme = ThemeData(
      canvasColor: Colors.grey[200],
      brightness: Brightness.light,
      primaryColor: Color(0xFF05d563),
      accentColor: Color(0xFF05d563),
      cursorColor: Color(0xFF05d563),
      disabledColor: Colors.grey,
      textTheme: TextTheme(
        headline1: GoogleFonts.montserrat(fontSize: 34, color: Colors.black87),
        headline3: GoogleFonts.montserrat(fontSize: 24, color: Colors.black87),
        headline4: GoogleFonts.montserrat(fontSize: 20, color: Colors.black87),
        headline5: GoogleFonts.montserrat(fontSize: 17, color: Colors.black87),
        headline6: GoogleFonts.montserrat(fontSize: 14, color: Colors.black87),

      )
  );
  static final darkTheme = ThemeData(
      brightness: Brightness.dark,
      primaryColor: Color(0xFF05d563),
      accentColor: Color(0xFF05d563),
      disabledColor: Colors.grey,
      cursorColor: Color(0xFF05d563),
      textTheme: TextTheme(
        headline1: GoogleFonts.montserrat(fontSize: 34, color: Colors.white),
        headline2: GoogleFonts.montserrat(fontSize: 30, color: Colors.white),
        headline3: GoogleFonts.montserrat(fontSize: 24, color: Colors.white),
        headline4: GoogleFonts.montserrat(fontSize: 20, color: Colors.white),
        headline5: GoogleFonts.montserrat(fontSize: 17, color: Colors.white),
        headline6: GoogleFonts.montserrat(fontSize: 14, color: Colors.white),
      )
  );
}