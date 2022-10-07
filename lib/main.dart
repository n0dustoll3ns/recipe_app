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
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              textStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600, fontSize: 16, letterSpacing: 0, color: Colors.white),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.symmetric(horizontal: 43, vertical: 11)),
        ),
        textTheme: TextTheme(
          displayMedium: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 50, letterSpacing: 0),
          titleMedium: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 18, letterSpacing: 0),
          bodySmall: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16, letterSpacing: 0),
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
