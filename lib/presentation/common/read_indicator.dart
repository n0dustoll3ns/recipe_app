import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/platform/size_config.dart';

class ReadIndicator extends StatelessWidget {
  final bool seen;
  const ReadIndicator({super.key, required this.seen});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.blockSizeHorizontal * 7.466,
      height: SizeConfig.blockSizeHorizontal * 7.466,
      decoration: BoxDecoration(
          color: const Color(0xffFFE1B3),
          borderRadius: BorderRadius.all(Radius.circular(SizeConfig.blockSizeHorizontal * 2.751))),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          if (!seen)
            Container(
              height: SizeConfig.blockSizeHorizontal * 1.351,
              width: SizeConfig.blockSizeHorizontal * 1.351,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffFF9C00),
              ),
            ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal * 1.351),
            child: seen
                ? SvgPicture.asset('assets/icons/notification_read.svg')
                : SvgPicture.asset('assets/icons/notification_unread.svg'),
          ),
        ],
      ),
    );
  }
}
