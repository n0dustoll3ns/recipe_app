import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../model/recipe.dart';
import '../../../platform/size_config.dart';
import '../common/saved_recipe_card.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: SizeConfig.blockSizeVertical * 7.38),
          Center(
              child: Text('Saved Recipes',
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 20))),
          SizedBox(height: SizeConfig.blockSizeVertical * 3.68),
          ListView.separated(
              physics: ScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.blockSizeHorizontal * 5,
                vertical: SizeConfig.blockSizeVertical * .650,
              ),
              shrinkWrap: true,
              itemBuilder: ((context, index) => SavedRecipeCard(recipe: savedRecipes[index])),
              separatorBuilder: (context, index) => SizedBox(height: SizeConfig.blockSizeVertical * 2.46),
              itemCount: savedRecipes.length),
          SizedBox(height: SizeConfig.blockSizeVertical * 5.31),
        ],
      ),
    );
  }
}
