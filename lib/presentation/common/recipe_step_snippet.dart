import 'package:flutter/material.dart';
import 'package:recipe_app/platform/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../model/step.dart';

class StepSnippet extends StatelessWidget {
  final int stepIndex;
  final RecipeStep recipeStep;
  const StepSnippet({super.key, required this.stepIndex, required this.recipeStep});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(SizeConfig.blockSizeVertical * 2.477),
      decoration: BoxDecoration(
          color: const Color(0xffD9D9D9).withOpacity(0.5),
          borderRadius: const BorderRadius.all(Radius.circular(12))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Step $stepIndex',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600, fontSize: 11, color: const Color(0xff121212)),
          ),
          SizedBox(height: SizeConfig.blockSizeVertical * 0.977),
          Text(
            recipeStep.description,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400, fontSize: 11, color: const Color(0xffBCBCBC)),
          ),
        ],
      ),
    );
  }
}
