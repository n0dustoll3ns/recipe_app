import 'package:flutter/material.dart';
import 'package:recipe_app/platform/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../model/notification.dart';
import '../../../model/step.dart';
import '../components/seen_indicator.dart';

class NotificationSnippet extends StatelessWidget {
  final NotificationMessage notification;
  const NotificationSnippet({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(SizeConfig.blockSizeVertical * 2.477),
      decoration: BoxDecoration(
          color: const Color(0xffD9D9D9).withOpacity(0.5),
          borderRadius: const BorderRadius.all(Radius.circular(12))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  notification.title,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 11, color: const Color(0xff121212)),
                ),
                SizedBox(height: SizeConfig.blockSizeVertical * 0.977),
                Text(
                  notification.text,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400, fontSize: 11, color: const Color(0xffBCBCBC)),
                ),
              ],
            ),
          ),
          SeenIndicator(
            seen: !notification.unread,
          )
        ],
      ),
    );
  }
}
