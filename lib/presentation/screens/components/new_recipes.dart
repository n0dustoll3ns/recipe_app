import 'package:flutter/material.dart';
import 'package:recipe_app/platform/size_config.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/presentation/screens/common/user_recipe.dart';

import '../../../model/recipe.dart';

class NewRecipes extends StatelessWidget {
  const NewRecipes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal * 5),
          child: Text(
            'New Recipes',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical * 21.650,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.blockSizeHorizontal * 5,
              vertical: SizeConfig.blockSizeVertical * .650,
            ),
            separatorBuilder: (BuildContext context, int index) =>
                SizedBox(width: SizeConfig.blockSizeHorizontal * 3),
            scrollDirection: Axis.horizontal,
            itemCount: userRecipes.length,
            itemBuilder: (BuildContext context, int index) => UserRecipe(recipe: userRecipes[index]),
          ),
        ),
      ],
    );
  }
}
