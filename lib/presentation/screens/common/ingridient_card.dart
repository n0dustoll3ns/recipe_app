import 'package:flutter/material.dart';
import 'package:recipe_app/platform/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../model/ingridient.dart';

class IngridientCard extends StatelessWidget {
  final Ingridient ingridient;
  const IngridientCard({super.key, required this.ingridient});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffD9D9D9).withOpacity(0.5),
          borderRadius: const BorderRadius.all(Radius.circular(12))),
      height: SizeConfig.blockSizeVertical * 9.359,
      padding: EdgeInsets.all(SizeConfig.blockSizeVertical * 1.477),
      child: AspectRatio(
        aspectRatio: 315 / 76,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xffFFFFFF), borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: EdgeInsets.all(SizeConfig.blockSizeVertical * 0.177),
                child: Image.asset(ingridient.image),
              ),
            ),
            SizedBox(width: SizeConfig.blockSizeVertical * 1.477),
            Text(
              ingridient.name,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600, fontSize: 16, color: const Color(0xff121212)),
            ),
            const Spacer(),
            Text(
              '${ingridient.weight}g',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400, fontSize: 14, color: const Color(0xffBCBCBC)),
            ),
          ],
        ),
      ),
    );
  }
}
