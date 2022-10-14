import 'package:flutter/material.dart';
import 'package:recipe_app/platform/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../model/meal.dart';
import 'favorite_label.dart';

class MealCard extends StatelessWidget {
  const MealCard({super.key, required this.meal});
  final Meal meal;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.blockSizeHorizontal * 40.266,
      child: Card(
        elevation: 0,
        child: Stack(
          alignment: AlignmentDirectional.center,
          fit: StackFit.expand,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 9.773,
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xffD9D9D9),
                    ),
                    height: SizeConfig.blockSizeVertical * 36.182,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal * 2.667),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                      child:
                          ClipRRect(borderRadius: BorderRadius.circular(99), child: Image.asset(meal.image))),
                  Text(
                    meal.name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, fontSize: 14, color: const Color(0xff484848)),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Time',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400, fontSize: 11, color: const Color(0xffA9A9A9)),
                          ),
                          Text(
                            '${meal.duration.inMinutes} Mins',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600, fontSize: 14, color: const Color(0xff484848)),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const FavoriteLabel(),
                    ],
                  )
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 9.333,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Color(0xffFFE1B3), borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Transform.scale(
                            scale: 0.7,
                            child: const Icon(Icons.star, color: Color(0xFFFFAD30)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: SizeConfig.blockSizeHorizontal * 2.4),
                            child: Text(
                              '${meal.rating}',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 11, color: const Color(0xff484848)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.transparent,
                    ),
                    height: SizeConfig.blockSizeVertical * 36.182,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
