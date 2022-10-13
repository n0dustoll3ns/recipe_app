import 'dart:math';

import 'package:flutter_lorem/flutter_lorem.dart';

class RecipeStep {
  final String description;
  RecipeStep() : description = lorem(paragraphs: Random().nextInt(1) + 1, words: Random().nextInt(20) + 12);
}
