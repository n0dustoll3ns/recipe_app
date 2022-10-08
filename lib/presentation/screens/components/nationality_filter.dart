import 'package:flutter/material.dart';
import 'package:recipe_app/model/global.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../platform/size_config.dart';

class NationalCuisine extends StatefulWidget {
  const NationalCuisine({super.key});

  @override
  State<NationalCuisine> createState() => _NationalCuisineState();
}

class _NationalCuisineState extends State<NationalCuisine> {
  int selectedCuisine = 0;
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
                        elevation: 0,
                        backgroundColor:
                            index == selectedCuisine ? Theme.of(context).primaryColor : Colors.white,
                        textStyle: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        )),
                    onPressed: () {
                      setState(() {
                        selectedCuisine = index;
                      });
                    },
                    child: Text(
                      cuisines[index],
                      style: TextStyle(
                        color: index == selectedCuisine ? Colors.white : Theme.of(context).primaryColor,
                      ),
                    )))),
      ),
    );
  }
}
