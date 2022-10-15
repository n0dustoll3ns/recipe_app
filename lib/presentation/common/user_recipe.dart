import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/platform/size_config.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

import '../../model/recipe.dart';
import '../screens/recipe_page.dart';

class UserRecipe extends StatelessWidget {
  const UserRecipe({super.key, required this.recipe});
  final Recipe recipe;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (BuildContext context) => RecipePage(recipe: recipe))),
      child: SizedBox(
        width: SizeConfig.blockSizeHorizontal * 72,
        child: Stack(
          alignment: AlignmentDirectional.center,
          fit: StackFit.expand,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 7.533,
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      boxShadow: [BoxShadow(blurRadius: 6, color: Colors.black12)],
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal * 2.48),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              recipe.name,
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600, fontSize: 14, color: const Color(0xff484848)),
                              overflow: TextOverflow.ellipsis,
                            ),
                            RatingBar.builder(
                              itemSize: SizeConfig.blockSizeVertical * 2.4,
                              initialRating: recipe.rating,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              onRatingUpdate: (double value) {},
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                          height: SizeConfig.blockSizeHorizontal * 22.933,
                          width: SizeConfig.blockSizeHorizontal * 22.933,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(99),
                              child: Image.asset(
                                recipe.image,
                                fit: BoxFit.fill,
                              )))
                    ],
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical * 0.98),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(99),
                          child: SizedBox(
                              width: SizeConfig.blockSizeHorizontal * 6.67,
                              child: AspectRatio(aspectRatio: 1, child: Image.asset(recipe.creator.image)))),
                      SizedBox(width: SizeConfig.blockSizeHorizontal * 0.98),
                      Text(
                        recipe.creator.name,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400, fontSize: 11, color: const Color(0xffA9A9A9)),
                      ),
                      const Spacer(),
                      SvgPicture.asset('assets/icons/timer.svg'),
                      SizedBox(width: SizeConfig.blockSizeHorizontal * 1.48),
                      Text(
                        '${recipe.duration.inMinutes} mins',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400, fontSize: 11, color: const Color(0xffA9A9A9)),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
