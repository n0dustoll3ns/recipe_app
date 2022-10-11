import 'package:flutter/material.dart';
import 'package:recipe_app/platform/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../model/recipe.dart';

class SavedRecipeCard extends StatelessWidget {
  final Recipe recipe;
  const SavedRecipeCard({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.blockSizeHorizontal * 84,
      child: AspectRatio(
        aspectRatio: 315 / 150,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                recipe.image,
                fit: BoxFit.cover,
              ),
              const DecoratedBox(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                        colors: [Colors.transparent, Colors.black],
                        stops: [0.0, 1.0])),
              ),
              Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Transform.scale(scale: 0.7, child: const Icon(Icons.star, color: Color(0xFFFFAD30))),
                        Padding(
                          padding: EdgeInsets.only(right: SizeConfig.blockSizeHorizontal * 2.4),
                          child: Text(
                            '${recipe.rating}',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400, fontSize: 11, color: const Color(0xff000000)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
