import 'dart:math';

import 'package:flutter_lorem/flutter_lorem.dart';

class Notification {
  final String title = 'New Recipe Alert!';
  final String text = lorem(paragraphs: 1, words: Random().nextInt(5)+5);
  final bool unseen = Random().nextBool();
}
