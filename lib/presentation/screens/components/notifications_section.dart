import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../model/notification.dart';
import '../../../platform/size_config.dart';
import '../common/notification_snippet.dart';

class NotificationsSection extends StatelessWidget {
  final List<NotificationMessage> list;
  final String title;
  const NotificationsSection({super.key, required this.title, required this.list});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: SizeConfig.blockSizeVertical * 1.71),
        Align(
          alignment: Alignment.center,
          child: Text(
            title,
            style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 11),
          ),
        ),
        SizedBox(height: SizeConfig.blockSizeVertical * 1.71),
        ListView.separated(
          physics: const ScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) => SizedBox(height: SizeConfig.blockSizeVertical * 2.46),
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.blockSizeHorizontal * 5,
            vertical: SizeConfig.blockSizeVertical * .650,
          ),
          itemBuilder: ((context, index) => NotificationSnippet(notification: list[index])),
          itemCount: list.length,
        ),
      ],
    );
  }
}
