import 'dart:math';

import 'package:flutter_lorem/flutter_lorem.dart';

class NotificationMessage {
  final String title = 'New Recipe Alert!';
  final String text = lorem(paragraphs: 1, words: Random().nextInt(5) + 5);
  final bool unseen = Random().nextBool();
  final DateTime dateTime = DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day - Random().nextInt(3),
    DateTime.now().hour - Random().nextInt(24),
    DateTime.now().minute - Random().nextInt(59),
  );
  NotificationMessage();
}

List<NotificationMessage> notifications =
    List.generate(3 + Random().nextInt(7), (index) => NotificationMessage());
