import 'package:flutter/material.dart';
import 'package:recipe_app/model/global.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../platform/size_config.dart';

class PopularRecipes extends StatelessWidget {
  const PopularRecipes({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.blockSizeVertical * 28.448,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(cuisines.length, (index) => Container()),
      ),
    );
  }
}
