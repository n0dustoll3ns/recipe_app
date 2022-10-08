import 'package:flutter/material.dart';
import 'package:recipe_app/model/global.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../platform/size_config.dart';

class CuisineFilter extends StatefulWidget {
  const CuisineFilter({super.key});

  @override
  State<CuisineFilter> createState() => _CuisineFilterState();
}

class _CuisineFilterState extends State<CuisineFilter> {
  int selectedCuisine = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.blockSizeVertical * 6.280,
      
      child: ListView.separated(
        itemCount: cuisines.length,
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal * 5),
        separatorBuilder: (BuildContext context, int index) =>
            SizedBox(width: SizeConfig.blockSizeHorizontal * 3),
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) => ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: index == selectedCuisine ? Theme.of(context).primaryColor : Colors.white,
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
            ))),
      ),
    );
  }
}
