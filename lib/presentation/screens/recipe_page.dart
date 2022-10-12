import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/platform/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/recipe.dart';
import 'common/saved_recipe_snippet.dart';

class RecipePage extends StatefulWidget {
  final Recipe recipe;
  const RecipePage({super.key, required this.recipe});

  @override
  State<RecipePage> createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(initialIndex: 0, length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: SizeConfig.blockSizeHorizontal * 4),
            child: SvgPicture.asset('assets/icons/3dots.svg'),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal * 5),
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SavedRecipeSnippet(recipe: widget.recipe),
              SizedBox(height: SizeConfig.blockSizeHorizontal * 4),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      widget.recipe.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 14, color: Color(0xff000000)),
                    ),
                  ),
                  Text(
                    '(13k Reviews)',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xffa9a9a9)),
                  ),
                ],
              ),
              SizedBox(height: SizeConfig.blockSizeHorizontal * 4),
              Row(
                children: [
                  SizedBox(
                      width: SizeConfig.blockSizeHorizontal * 10.667,
                      child: AspectRatio(
                          aspectRatio: 1, child: ClipRRect(child: Image.asset(widget.recipe.creator.image)))),
                  SizedBox(width: SizeConfig.blockSizeHorizontal * 2),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.recipe.creator.name,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600, fontSize: 14, color: Color(0xff121212)),
                      ),
                      Text(
                        widget.recipe.creator.location ?? 'unknown',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400, fontSize: 11, color: Color(0xffA9A9A9)),
                      ),
                    ],
                  ),
                  Spacer(),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Follow',
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 11),
                      )),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal * 1.2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          // side: BorderSide(
                          //     width: 1,
                          //     color: _tabController.index == 0 ? Colors.white : const Color(0xff71B1A1)),
                        ),
                        elevation: 0,
                        backgroundColor:
                            _tabController.index == 0 ? Theme.of(context).primaryColor : Colors.white,
                        foregroundColor: _tabController.index == 0 ? Colors.white : const Color(0xff71B1A1)),
                    onPressed: () {
                      setState(() {
                        _tabController.index = 0;
                      });
                    },
                    child: Text(
                      'Ingridient',
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 11),
                    ),
                  )),
                  Expanded(
                      child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal * 1.2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          // side: BorderSide(
                          //     width: 1,
                          //     color: _tabController.index == 1 ? Colors.white : const Color(0xff71B1A1)),
                        ),
                        elevation: 0,
                        backgroundColor:
                            _tabController.index == 1 ? Theme.of(context).primaryColor : Colors.white,
                        foregroundColor: _tabController.index == 1 ? Colors.white : const Color(0xff71B1A1)),
                    onPressed: () {
                      setState(() {
                        _tabController.index = 1;
                      });
                    },
                    child: Text(
                      'procedure',
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 11),
                    ),
                  )),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Center(child: Text('asdf')),
                    Center(child: Text('asdasdff')),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
