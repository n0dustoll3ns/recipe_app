import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/platform/size_config.dart';
import 'package:recipe_app/presentation/common/meal_tile.dart';
import '../../model/recipe.dart';
import 'components/search_bar.dart';
import 'components/search_filter.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    _controller = AnimationController(
      value: 0,
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOutQuart,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xff292D32),
        title: Text(
          'Search recipes',
          style:
              GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 18, color: const Color(0xff181818)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: SizeConfig.blockSizeVertical * 2.141),
            RecipeSearch(
              onFilterPress: () => showFilters(),
              autoFocus: true,
              readOnly: false,
            ),
            SizedBox(height: SizeConfig.blockSizeVertical * 2.141),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal * 4),
                child: Row(
                  children: [
                    Text(
                      'Recent Search',
                      style:
                          GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black),
                    ),
                    const Spacer(),
                    Text(
                      '255 results',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400, fontSize: 11, color: const Color(0xffA9A9A9)),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: SizeConfig.blockSizeVertical * 2.463),
            GridView.builder(
                physics: const ScrollPhysics(),
                itemCount: searchRecipes.length,
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal * 4),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: SizeConfig.blockSizeHorizontal * 4,
                  crossAxisSpacing: SizeConfig.blockSizeHorizontal * 4,
                ),
                itemBuilder: ((context, index) => MealTile(recipe: searchRecipes[index])))
          ],
        ),
      ),
      bottomNavigationBar: SizeTransition(
        sizeFactor: _animation,
        child: SearchFilter(onAccept: () => showFilters()),
      ),
    );
  }

  Future<void> showFilters() async {
    if (_animation.status != AnimationStatus.completed) {
      await _controller.forward();
    } else {
      await _controller.animateBack(0, duration: const Duration(seconds: 1));
    }
  }
}
