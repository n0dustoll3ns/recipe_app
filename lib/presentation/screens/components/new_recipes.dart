import 'package:flutter/material.dart';
import 'package:recipe_app/platform/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

class NewRecipes extends StatelessWidget {
  const NewRecipes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'New Recipes',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical * 15.650,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Text('New Recipes'),
              Text('New Recipes'),
              Text('New Recipes'),
              Text('New Recipes'),
              Text('New Recipes'),
              Text('New Recipes'),
              Text('New Recipes'),
              Text('New Recipes'),
              Text('New Recipes'),
            ],
          ),
        ),
      ],
    );
  }
}
