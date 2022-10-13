import 'package:flutter/material.dart';

import '../../../model/notification.dart';
import '../../../platform/size_config.dart';
import '../common/notification_snippet.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationSorter extends StatelessWidget {
  final List<NotificationMessage> list;
  const NotificationSorter({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: SizeConfig.blockSizeVertical * 1.71),
        Align(
          alignment: Alignment.center,
          child: Text(
            'Today',
            style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 11),
          ),
        ),
        SizedBox(height: SizeConfig.blockSizeVertical * 1.71),
        ListView.separated(
          physics: ScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) => SizedBox(height: SizeConfig.blockSizeVertical * 2.46),
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.blockSizeHorizontal * 5,
            vertical: SizeConfig.blockSizeVertical * .650,
          ),
          itemBuilder: ((context, index) => NotificationSnippet(
              notification:
                  list.where((element) => element.dateTime.day == DateTime.now().day).toList()[index])),
          itemCount: list.where((element) => element.dateTime.day == DateTime.now().day).length,
        ),
        SizedBox(height: SizeConfig.blockSizeVertical * 1.71),
        Align(
          alignment: Alignment.center,
          child: Text(
            'Yesterday',
            style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 11),
          ),
        ),
        SizedBox(height: SizeConfig.blockSizeVertical * 1.71),
        ListView.separated(
          physics: ScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) => SizedBox(height: SizeConfig.blockSizeVertical * 2.46),
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.blockSizeHorizontal * 5,
            vertical: SizeConfig.blockSizeVertical * .650,
          ),
          itemBuilder: ((context, index) => NotificationSnippet(
              notification:
                  list.where((element) => element.dateTime.day + 1 == DateTime.now().day).toList()[index])),
          itemCount: list.where((element) => element.dateTime.day + 1 == DateTime.now().day).length,
        ),
        SizedBox(height: SizeConfig.blockSizeVertical * 1.71),
        Align(
          alignment: Alignment.center,
          child: Text(
            'Today',
            style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 11),
          ),
        ),
        SizedBox(height: SizeConfig.blockSizeVertical * 1.71),
        ListView.separated(
          physics: ScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) => SizedBox(height: SizeConfig.blockSizeVertical * 2.46),
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.blockSizeHorizontal * 5,
            vertical: SizeConfig.blockSizeVertical * .650,
          ),
          itemBuilder: ((context, index) => NotificationSnippet(
              notification:
                  list.where((element) => element.dateTime.day + 1 < DateTime.now().day).toList()[index])),
          itemCount: list.where((element) => element.dateTime.day + 1 < DateTime.now().day).length,
        ),
      ],
    );
  }
}
