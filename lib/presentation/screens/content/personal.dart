import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../platform/size_config.dart';

class Personal extends StatelessWidget {
  const Personal({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal * 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hello Jega',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  )),
              SizedBox(height: SizeConfig.blockSizeVertical * .6),
              Text('What are you cooking today?',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400, fontSize: 11, color: Color(0XffA9A9A9))),
            ],
          ),
          Spacer(),
          Image.asset('assets/images/avatar.png')
        ],
      ),
    );
  }
}
