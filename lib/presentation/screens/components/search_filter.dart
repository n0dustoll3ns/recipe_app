import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/platform/size_config.dart';
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

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.blockSizeVertical * 50,
      width: SizeConfig.blockSizeHorizontal * 100,
      decoration: BoxDecoration(
        boxShadow: const [BoxShadow(color: Colors.black12, offset: Offset(0, -3), blurRadius: 6)],
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
              children: List.generate(
                timeFilters.length,
                (index) => SizedBox(
                  height: SizeConfig.blockSizeHorizontal * 7.2,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(0),
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
            const Text('Rate'),
            const Text('Category'),
            ElevatedButton(
                onPressed: () {
                  widget.onAccept();
                },
                child: const Text('Filter'))
          ],
        ),
      ),
    );
  }
}
