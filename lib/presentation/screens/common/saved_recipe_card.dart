import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/platform/size_config.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/presentation/screens/common/favorite_label.dart';
import 'package:recipe_app/presentation/screens/recipe_page.dart';

import '../../../model/recipe.dart';
import '../../common/rating_sticker.dart';

class SavedRecipeCard extends StatelessWidget {
  final Recipe recipe;
  const SavedRecipeCard({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (BuildContext context) => RecipePage(recipe: recipe))),
      child: SizedBox(
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
                Padding(
                  padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal * 4),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: RatingSticker(rating: recipe.rating),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  recipe.name,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: const Color(0xffffffff)),
                                ),
                                Text(
                                  'By ${recipe.creator}',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 8,
                                      color: const Color(0xffD9D9D9)),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal * 1),
                            child: SvgPicture.asset('assets/icons/timer.svg'),
                          ),
                          Padding(
                            padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal * 1),
                            child: Text(
                              '${recipe.duration.inMinutes} min',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 11, color: const Color(0xffD9D9D9)),
                            ),
                          ),
                          const FavoriteLabel()
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
