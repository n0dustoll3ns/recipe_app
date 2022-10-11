import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../platform/size_config.dart';

class SocialNetworksAuthButtons extends StatelessWidget {
  const SocialNetworksAuthButtons({super.key, required this.onPress});
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.height / 7.5,
                height: 0.7,
                color: const Color(0XFFD9D9D9),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  'Or Sign in With',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400, fontSize: 11, color: const Color(0XFFD9D9D9)),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.height / 7.5,
                height: 0.7,
                color: const Color(0XFFD9D9D9),
              ),
            ],
          ),
        ),
        SizedBox(height: SizeConfig.blockSizeVertical * 1.463),
        Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 44,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal * 0.667)),
                    onPressed: () {
                      onPress();
                    },
                    child: SvgPicture.asset('assets/icons/google_logo.svg'),
                  ),
                ),
              ),
              SizedBox(width: SizeConfig.blockSizeHorizontal * 6.67),
              SizedBox(
                  height: 44,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal * 0.667)),
                        onPressed: () {
                          onPress();
                        },
                        child: SvgPicture.asset('assets/icons/facebook_logo.svg')),
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
