import 'package:flutter/cupertino.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../platform/size_config.dart';

class RateContextMenu extends StatelessWidget {
  final double initialRating;
  final Widget child;
  const RateContextMenu({super.key, required this.child, required this.initialRating});

  @override
  Widget build(BuildContext context) {
    return CupertinoContextMenu(
      actions: [
        Container(
          padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal * 4),
          width: SizeConfig.blockSizeHorizontal * 40,
          decoration:
              BoxDecoration(color: Color(0xFFFFFFFF), borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DefaultTextStyle(
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400, fontSize: 14, color: const Color(0xff121212)),
                child: Text(
                  'Rate recipe',
                ),
              ),
              SizedBox(height: SizeConfig.blockSizeHorizontal * 2),
              RatingBar.builder(
                itemSize: SizeConfig.blockSizeVertical * 4.4,
                initialRating: initialRating,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                onRatingUpdate: (double value) {},
                itemBuilder: (context, _) => const Icon(
                  CupertinoIcons.star_fill,
                  color: Color(0xffFFAD30),
                ),
              ),
              SizedBox(height: SizeConfig.blockSizeHorizontal * 2),
              Transform.scale(
                scale: 0.75,
                child: CupertinoButton(
                  // padding: EdgeInsets.symmetric(vertical: 3),
                  color: Color(0xffFFAD30),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Send'),
                ),
              )
            ],
          ),
        )
      ],
      child: child,
    );
  }
}
