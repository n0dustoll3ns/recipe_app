import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/platform/size_config.dart';
import 'package:recipe_app/presentation/screens/common/meal_tile.dart';
import 'components/recipe_search.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xff292D32),
        title: Text(
          'Search recipes',
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 18, color: Color(0xff181818)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: SizeConfig.blockSizeVertical * 2.141),
            Hero(tag: 'searchPanel', child: RecipeSearch()),
            SizedBox(height: SizeConfig.blockSizeVertical * 2.141),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal * 4),
                child: Text(
                  'Recent Search',
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: SizeConfig.blockSizeVertical * 2.463),
            GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: SizeConfig.blockSizeHorizontal * 4,
                  crossAxisSpacing: SizeConfig.blockSizeHorizontal * 4,
                ),
                itemBuilder: ((context, index) => MealTile()))
          ],
        ),
      ),
    );
  }
}
