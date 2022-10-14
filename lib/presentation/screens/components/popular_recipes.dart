import 'package:flutter/material.dart';
import 'package:recipe_app/model/meal.dart';

import '../../../platform/size_config.dart';
import '../../common/meal_card.dart';

class PopularRecipes extends StatelessWidget {
  const PopularRecipes({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: SizeConfig.blockSizeVertical * 37.448,
        child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal * 5),
          separatorBuilder: (BuildContext context, int index) =>
              SizedBox(width: SizeConfig.blockSizeHorizontal * 3),
          scrollDirection: Axis.horizontal,
          itemCount: meals.length,
          itemBuilder: (BuildContext context, int index) => MealCard(meal: meals[index]),
        ));
  }
}
