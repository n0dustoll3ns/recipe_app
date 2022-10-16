// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../model/recipe.dart';
import '../../../platform/size_config.dart';
import '../../common/saved_recipe_card.dart';


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(initialIndex: 0, length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal * 5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBar(
            centerTitle: true,
            title: Text('Profile', style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 20)),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: SizeConfig.blockSizeHorizontal * 4),
                child: SvgPicture.asset('assets/icons/3dots.svg'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: SizeConfig.blockSizeHorizontal * 26.4,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(const Radius.circular(99)),
                    child: Image.asset(
                      'assets/images/user_photos/Miquel Ferran.png',
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Recipe',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 11, color: const Color(0xffA9A9A9)),
                  ),
                  Text(
                    '4',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, fontSize: 20, color: const Color(0xff121212)),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Followers',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 11, color: const Color(0xffA9A9A9)),
                  ),
                  Text(
                    '2.5M',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, fontSize: 20, color: const Color(0xff121212)),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Following',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 11, color: const Color(0xffA9A9A9)),
                  ),
                  Text(
                    '259',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, fontSize: 20, color: const Color(0xff121212)),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: SizeConfig.blockSizeHorizontal * 3),
          Text(
            'Afuwape Abiodun',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600, fontSize: 16.5, color: const Color(0xff121212)),
          ),
          Text(
            'Chef',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400, fontSize: 11, color: const Color(0xffA9A9A9)),
          ),
          Text(
            'Private Chef \nPassionate about food and life 🥘🍲🍝🍱',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400, fontSize: 11, color: const Color(0xff797979)),
          ),
          Text(
            'More...',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400, fontSize: 11, color: const Color(0xff71B1A1)),
          ),
          SizedBox(height: SizeConfig.blockSizeHorizontal * 2),
          Row(
            children: [
              Expanded(
                  child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal * 1.2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
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
                  'Recipe',
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 11),
                ),
              )),
              Expanded(
                  child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal * 1.2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
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
                  'Videos',
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 11),
                ),
              )),
              Expanded(
                  child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal * 1.2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 0,
                    backgroundColor:
                        _tabController.index == 2 ? Theme.of(context).primaryColor : Colors.white,
                    foregroundColor: _tabController.index == 2 ? Colors.white : const Color(0xff71B1A1)),
                onPressed: () {
                  setState(() {
                    _tabController.index = 2;
                  });
                },
                child: Text(
                  'Tag',
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 11),
                ),
              )),
            ],
          ),
          ListView.separated(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) => SizedBox(height: SizeConfig.blockSizeVertical * 2.46),
            itemBuilder: ((context, index) => SavedRecipeCard(recipe: savedRecipes[index])),
            itemCount: savedRecipes.length,
          ),
        ],
      ),
    );
  }
}
