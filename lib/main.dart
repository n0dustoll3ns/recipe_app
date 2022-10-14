// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'presentation/screens/introduction.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
        ),
        scaffoldBackgroundColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              textStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600, fontSize: 16, letterSpacing: 0, color: Colors.white),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
        ),
        inputDecorationTheme: InputDecorationTheme(
            contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 18),
            hintStyle: GoogleFonts.poppins(
                fontWeight: FontWeight.w400, fontSize: 11, letterSpacing: 0, color: const Color(0xFFD9D9D9)),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: Color(0xCC129575), width: 2.5),
            ),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: Color(0xFFD9D9D9), width: 1.5),
            )),
        textTheme: TextTheme(
          displayMedium:
              GoogleFonts.poppins(height: 1.2, fontWeight: FontWeight.w600, fontSize: 50, letterSpacing: 0),
          titleLarge: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 30, letterSpacing: 0),
          titleMedium: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 18, letterSpacing: 0),
          bodyMedium: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16, letterSpacing: 0),
          bodySmall: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 14, letterSpacing: 0),
        ),
        primarySwatch: const MaterialColor(0xFF129575, {
          50: Color(0x18129575),
          100: Color(0x33129575),
          200: Color(0x4B129575),
          300: Color(0x66129575),
          400: Color(0x7E129575),
          500: Color(0x99129575),
          600: Color(0xB1129575),
          700: Color(0xCC129575),
          800: Color(0xE4129575),
          900: Color(0xFF129575),
        }),
      ),
      home: const Intro(),
    );
  }
}
