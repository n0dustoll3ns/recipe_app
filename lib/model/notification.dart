import 'dart:math';

import 'package:flutter_lorem/flutter_lorem.dart';

class NotificationMessage {
  final String title = 'New Recipe Alert!';
  final String text = lorem(paragraphs: 1, words: Random().nextInt(5) + 5);
  final bool unseen = Random().nextBool();
  final DateTime dateTime;
  NotificationMessage({required this.dateTime});
}

List<NotificationMessage> notifications = [
  NotificationMessage(
      dateTime: DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
    DateTime.now().hour,
    DateTime.now().minute - 10,
  )),
  NotificationMessage(
      dateTime: DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
    DateTime.now().hour,
    DateTime.now().minute - 28,
  )),
  NotificationMessage(
      dateTime: DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
    DateTime.now().hour - 1,
    DateTime.now().minute - 30,
  )),
  NotificationMessage(
      dateTime: DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day - 1,
    DateTime.now().hour - 1,
    DateTime.now().minute - 30,
  )),
  NotificationMessage(
      dateTime: DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day - 1,
    DateTime.now().hour - 2,
    DateTime.now().minute - 32,
  )),
  NotificationMessage(
      dateTime: DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day - 1,
    DateTime.now().hour - 2,
    DateTime.now().minute - 45,
  )),
];
