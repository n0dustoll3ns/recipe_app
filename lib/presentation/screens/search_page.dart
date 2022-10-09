import 'package:flutter/material.dart';

import 'components/recipe_search.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          RecipeSearch(),
          
        ],
      ),
    );
  }
}
