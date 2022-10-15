import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../platform/size_config.dart';

class Personal extends StatelessWidget {
  const Personal({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal * 4),
      child: SizedBox(
        height: 55,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                        fontWeight: FontWeight.w400, fontSize: 11, color: const Color(0XffA9A9A9))),
              ],
            ),
            const Spacer(),
            DecoratedBox(
              decoration: const BoxDecoration(
                  color: Color(0XFFFFCE80), borderRadius: BorderRadius.all(Radius.circular(12))),
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset(
                  'assets/images/avatar.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
