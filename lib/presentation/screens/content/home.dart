import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/platform/size_config.dart';
import 'package:recipe_app/presentation/screens/components/nationality_filter.dart';
import 'package:recipe_app/presentation/screens/content/personal.dart';

import '../components/new_recipes.dart';
import '../components/recipe_search.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Spacer(
          flex: 7,
        ),
        Personal(),
        Spacer(flex: 2),
        RecipeSearch(),
        Spacer(flex: 2),
        NationalCuisine(),
        Spacer(flex: 2),
        NewRecipes(),
        Spacer(flex: 2),
      ],
    );
  }
}
