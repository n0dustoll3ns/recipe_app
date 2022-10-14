import 'package:flutter/material.dart';
import 'package:recipe_app/platform/size_config.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

import '../../../model/global.dart';

class SearchFilter extends StatefulWidget {
  final Function onAccept;
  const SearchFilter({super.key, required this.onAccept});

  @override
  State<SearchFilter> createState() => _SearchFilterState();
}

class _SearchFilterState extends State<SearchFilter> {
  String selectedTimeFilter = 'Newest';
  String selectedCategoryFiltrer = 'Local Dish';
  int selectedRating = 4;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.blockSizeVertical * 45,
      width: SizeConfig.blockSizeHorizontal * 100,
      padding: EdgeInsets.only(top: SizeConfig.blockSizeHorizontal * 4),
      decoration: BoxDecoration(
        boxShadow: const [BoxShadow(color: Colors.black26, offset: Offset(0, -4), blurRadius: 6)],
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(SizeConfig.blockSizeHorizontal * 13.334)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal * 8),
        child: ListView(
          shrinkWrap: true,
          children: [
            Center(
              child: Text(
                'Filter Search',
                style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 14, color: Colors.black),
              ),
            ),
            Text(
              'Time',
              style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 14, color: Colors.black),
            ),
            Wrap(
              spacing: SizeConfig.blockSizeHorizontal * 2.667,
              runSpacing: SizeConfig.blockSizeHorizontal * 2.667,
              children: List.generate(
                timeFilters.length,
                (index) => SizedBox(
                  height: SizeConfig.blockSizeHorizontal * 7.2,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal * 1.2),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                  width: 1,
                                  color: timeFilters[index] == selectedTimeFilter
                                      ? Colors.white
                                      : const Color(0xff71B1A1))),
                          elevation: 0,
                          backgroundColor: timeFilters[index] == selectedTimeFilter
                              ? Theme.of(context).primaryColor
                              : Colors.white,
                          foregroundColor: timeFilters[index] == selectedTimeFilter
                              ? Colors.white
                              : const Color(0xff71B1A1)),
                      child: Text(timeFilters[index],
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 11,
                              color: timeFilters[index] == selectedTimeFilter
                                  ? Colors.white
                                  : const Color(0xff71B1A1))),
                      onPressed: () {
                        setState(() {
                          selectedTimeFilter = timeFilters[index];
                        });
                      }),
                ),
              ),
            ),
            SizedBox(height: SizeConfig.blockSizeHorizontal * 2.667),
            Text(
              'Rate',
              style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 14, color: Colors.black),
            ),
            Wrap(
              spacing: SizeConfig.blockSizeHorizontal * 2.667,
              runSpacing: SizeConfig.blockSizeHorizontal * 2.667,
              children: List.generate(
                5,
                (index) => SizedBox(
                  height: SizeConfig.blockSizeHorizontal * 7.2,
                  width: SizeConfig.blockSizeHorizontal * 11.56,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal * 0.2),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                  width: 1,
                                  color: index == selectedRating ? Colors.white : const Color(0xff71B1A1))),
                          elevation: 0,
                          backgroundColor:
                              index == selectedRating ? Theme.of(context).primaryColor : Colors.white,
                          foregroundColor: index == selectedRating ? Colors.white : const Color(0xff71B1A1)),
                      child: Text('${-(index - 5)} ★',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 11,
                              color: index == selectedRating ? Colors.white : const Color(0xff71B1A1))),
                      onPressed: () {
                        setState(() {
                          selectedRating = index;
                        });
                      }),
                ),
              ),
            ),
            SizedBox(height: SizeConfig.blockSizeHorizontal * 2.667),
            Text(
              'Category',
              style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 14, color: Colors.black),
            ),
            Wrap(
              spacing: SizeConfig.blockSizeHorizontal * 2.667,
              runSpacing: SizeConfig.blockSizeHorizontal * 2.667,
              children: List.generate(
                categoryFiltrers.length,
                (index) => SizedBox(
                  height: SizeConfig.blockSizeHorizontal * 7.2,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal * 1.2),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                  width: 1,
                                  color: categoryFiltrers[index] == selectedCategoryFiltrer
                                      ? Colors.white
                                      : const Color(0xff71B1A1))),
                          elevation: 0,
                          backgroundColor: categoryFiltrers[index] == selectedCategoryFiltrer
                              ? Theme.of(context).primaryColor
                              : Colors.white,
                          foregroundColor: categoryFiltrers[index] == selectedCategoryFiltrer
                              ? Colors.white
                              : const Color(0xff71B1A1)),
                      child: Text(categoryFiltrers[index],
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 11,
                              color: categoryFiltrers[index] == selectedCategoryFiltrer
                                  ? Colors.white
                                  : const Color(0xff71B1A1))),
                      onPressed: () {
                        setState(() {
                          selectedCategoryFiltrer = categoryFiltrers[index];
                        });
                      }),
                ),
              ),
            ),
            SizedBox(height: SizeConfig.blockSizeHorizontal * 2.667),
            ElevatedButton(
                onPressed: () {
                  widget.onAccept();
                },
                child: Text('Filter', style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 11))),
            SizedBox(height: SizeConfig.blockSizeHorizontal * 2.667),
          ],
        ),
      ),
    );
  }
}
