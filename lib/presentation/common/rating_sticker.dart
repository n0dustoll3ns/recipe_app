import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/presentation/common/rate_context_menu%20copy.dart';
import '../../platform/size_config.dart';

class RatingSticker extends StatelessWidget {
  final double rating;
  const RatingSticker({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return RateContextMenu(
      initialRating: rating,
      child: Padding(
        padding: const EdgeInsets.all(0.3),
        child: DecoratedBox(
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
                child: DefaultTextStyle(
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400, fontSize: 11, color: const Color(0xff484848)),
                  child: Text(
                    '$rating',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 11, color: const Color(0xff484848)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
