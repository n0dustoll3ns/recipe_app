import 'package:flutter/cupertino.dart';
import 'package:recipe_app/platform/size_config.dart';

import '../../../model/recipe.dart';

class MealTile extends StatelessWidget {
  const MealTile({super.key, required this.recipe});
  final Recipe recipe;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.blockSizeHorizontal * 18.472,
      child: AspectRatio(
        aspectRatio: 1,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Stack(
            fit: StackFit.expand,
            children: [Image.asset(recipe.image)],
          ),
        ),
      ),
    );
  }
}
