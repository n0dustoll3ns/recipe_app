import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../platform/size_config.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(initialIndex: 0, length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: SizeConfig.blockSizeVertical * 7.38),
          Center(
              child: Text('Notifications',
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 20))),
          SizedBox(height: SizeConfig.blockSizeVertical * 3.68),
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
                  'All',
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
                  'Read',
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
                  'Unread',
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 11),
                ),
              )),
            ],
          ),
          SizedBox(height: SizeConfig.blockSizeVertical * 3.68),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Today',
              style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 11),
            ),
          ),
          SizedBox(height: SizeConfig.blockSizeVertical * 3.68),
          ListView.separated(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) => SizedBox(height: SizeConfig.blockSizeVertical * 2.46),
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.blockSizeHorizontal * 5,
              vertical: SizeConfig.blockSizeVertical * .650,
            ),
            itemBuilder: ((context, index) => SavedRecipeCard(recipe: savedRecipes[index])),
            itemCount: savedRecipes.length,
          ),
          SizedBox(height: SizeConfig.blockSizeVertical * 5.31),
        ],
      ),
    );
  }
}
