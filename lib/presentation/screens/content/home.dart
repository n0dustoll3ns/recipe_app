import 'package:flutter/material.dart';
import 'package:recipe_app/platform/size_config.dart';
import 'package:recipe_app/presentation/screens/components/nationality_filter.dart';
import 'package:recipe_app/presentation/screens/components/popular_recipes.dart';
import 'package:recipe_app/presentation/screens/content/personal.dart';

import '../components/new_recipes.dart';
import '../components/recipe_search.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: SizeConfig.blockSizeVertical * 7.38),
          const Personal(),
          SizedBox(height: SizeConfig.blockSizeVertical * 3.68),
          RecipeSearch(onFilterPress: () {}),
          SizedBox(height: SizeConfig.blockSizeVertical * 1.68),
          const CuisineFilter(),
          SizedBox(height: SizeConfig.blockSizeVertical * 1.68),
          const PopularRecipes(),
          SizedBox(height: SizeConfig.blockSizeVertical * 1.68),
          const NewRecipes(),
          SizedBox(height: SizeConfig.blockSizeVertical * 15.31),
        ],
      ),
    );
  }
}
