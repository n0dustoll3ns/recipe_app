import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/platform/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../model/meal.dart';
import '../../../model/recipe.dart';

class UserRecipe extends StatelessWidget {
  const UserRecipe({super.key, required this.meal});
  final Recipe meal;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.blockSizeHorizontal * 72,
      child: Stack(
        alignment: AlignmentDirectional.center,
        fit: StackFit.expand,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: SizeConfig.blockSizeVertical * 8.533,
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    boxShadow: [BoxShadow(blurRadius: 4)],
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xffD9D9D9),
                  ),
                  height: SizeConfig.blockSizeVertical * 36.182,
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                  child: ClipRRect(borderRadius: BorderRadius.circular(99), child: Image.asset(meal.image))),
              Text(
                meal.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style:
                    GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 14, color: Color(0xff484848)),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal * 2.667),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Time',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400, fontSize: 11, color: Color(0xffA9A9A9)),
                        ),
                        Text(
                          '${meal.duration.inMinutes} Mins',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600, fontSize: 14, color: Color(0xff484848)),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                        width: SizeConfig.blockSizeHorizontal * 6.4,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child:
                            Transform.scale(scale: 0.7, child: SvgPicture.asset('assets/icons/favorite.svg')))
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
