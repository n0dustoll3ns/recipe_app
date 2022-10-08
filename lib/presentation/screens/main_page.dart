import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_app/presentation/screens/content/favorite.dart';
import 'package:recipe_app/presentation/screens/content/home.dart';
import 'package:recipe_app/presentation/screens/content/profile.dart';

import '../../platform/size_config.dart';
import 'content/notification.dart';

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(initialIndex: 1, length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          onPressed: () {},
          child: SvgPicture.asset('assets/icons/union.svg'), //icon inside button
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: TabBarView(
          controller: _tabController,
          children: [
            Home(),
            Favorite(),
            Notifications(),
            Profile(),
          ],
        ),
        bottomNavigationBar: SizedBox(
          height: 58,
          child: BottomAppBar(
            elevation: 2,
            color: Colors.white,
            shape: const CircularNotchedRectangle(),
            //shape of notch
            notchMargin: 7, //notche margin between floating button and bottom appbar
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              //children inside bottom appbar
              children: <Widget>[
                Spacer(flex: 1),
                IconButton(
                  icon: SvgPicture.asset(
                    'assets/icons/home.svg',
                    color: _tabController.index == 0 ? Theme.of(context).primaryColor : null,
                  ),
                  onPressed: () {
                    setState(() {
                      _tabController.index = 0;
                    });
                  },
                ),
                Spacer(flex: 1),
                IconButton(
                  icon: SvgPicture.asset(
                    'assets/icons/favorite.svg',
                    color: _tabController.index == 1 ? Theme.of(context).primaryColor : null,
                  ),
                  onPressed: () {
                    setState(() {
                      _tabController.index = 1;
                    });
                  },
                ),
                Spacer(flex: 3),
                IconButton(
                  icon: SvgPicture.asset(
                    'assets/icons/notification_bing.svg',
                    color: _tabController.index == 2 ? Theme.of(context).primaryColor : null,
                  ),
                  onPressed: () {
                    setState(() {
                      _tabController.index = 2;
                    });
                  },
                ),
                Spacer(flex: 1),
                IconButton(
                  icon: SvgPicture.asset(
                    'assets/icons/profile.svg',
                    color: _tabController.index == 3 ? Theme.of(context).primaryColor : null,
                  ),
                  onPressed: () {
                    setState(() {
                      _tabController.index = 3;
                    });
                  },
                ),
                Spacer(flex: 1),
              ],
            ),
          ),
        ));
  }
}
