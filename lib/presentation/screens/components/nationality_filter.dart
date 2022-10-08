import 'package:flutter/material.dart';
import 'package:recipe_app/model/global.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../platform/size_config.dart';

class NationalCuisine extends StatelessWidget {
  const NationalCuisine({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.blockSizeVertical * 6.280,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
            cuisines.length,
            (index) => Container(
                margin: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal * 2.66),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle()
                  ),
                  onPressed: () {}, child: Text(cuisines[index])))),
      ),
    );
  }
}
