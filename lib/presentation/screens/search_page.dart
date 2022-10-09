import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/recipe_search.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search recipes',
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 18, color: Color(0xff181818)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RecipeSearch(),
            Text('Recent Search'),
          ],
        ),
      ),
    );
  }
}
