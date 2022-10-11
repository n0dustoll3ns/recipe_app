import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/platform/size_config.dart';

import '../../model/recipe.dart';
import 'rating_sticker.dart';

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
            children: [
              Image.asset(recipe.image),
              const DecoratedBox(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                        colors: [Colors.transparent, Colors.black],
                        stops: [0.0, 1.0])),
              ),
              Padding(
                padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal * 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: DecoratedBox(
                        decoration: const BoxDecoration(
                            color: Color(0xffFFE1B3), borderRadius: BorderRadius.all(Radius.circular(20))),
                        child: RatingSticker(rating: recipe.rating),
                      ),
                    ),
                    Spacer(),
                    Text(
                      '${recipe.name}',
                      maxLines: 2,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 11, color: Color(0xffFFFFFF)),
                    ),
                    SizedBox(height: SizeConfig.blockSizeHorizontal * 1.5),
                    Text(
                      'By ${recipe.creatorName}',
                      maxLines: 1,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 8, color: Color(0xffA9A9A9)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
