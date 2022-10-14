import 'package:flutter/material.dart';

import '../../../model/global.dart';
import '../../../model/notification.dart';
import '../../../platform/size_config.dart';
import '../common/notification_snippet.dart';
import 'package:google_fonts/google_fonts.dart';

import 'notifications_section.dart';

class NotificationSorter extends StatelessWidget {
  final List<NotificationMessage> list;
  const NotificationSorter({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    var todayList = list.where(notificationSorters[0]).toList();
    var yesterdayList = list.where(notificationSorters[1]).toList();
    var earlierList = list.where(notificationSorters[2]).toList();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (todayList.isNotEmpty)
          NotificationsSection(
            title: 'Today',
            list: todayList,
          ),
        if (yesterdayList.isNotEmpty)
          NotificationsSection(
            title: 'Yesterday',
            list: yesterdayList,
          ),
        if (earlierList.isNotEmpty)
          NotificationsSection(
            title: 'Earlier',
            list: earlierList,
          ),
        SizedBox(height: SizeConfig.blockSizeVertical * 1.71),
      ],
    );
  }
}
