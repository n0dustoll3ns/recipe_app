import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_app/presentation/screens/content/favorite.dart';
import 'package:recipe_app/presentation/screens/content/home.dart';
import 'package:recipe_app/presentation/screens/content/profile.dart';

import '../../model/global.dart';
import 'content/notifications.dart';

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(initialIndex: 0, length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          onPressed: () {},
          child: SvgPicture.asset('assets/icons/union.svg'), //icon inside button
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: TabBarView(
          controller: _tabController,
          children: const [
            Home(),
            Favorite(),
            Notifications(),
            Profile(),
          ],
        ),
        bottomNavigationBar: SizedBox(
          height: 58,
          child: BottomAppBar(
            elevation: 3,
            color: Colors.white,
            shape: const CircularNotchedRectangle(),
            notchMargin: 7, //notche margin between floating button and bottom appbar
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const Spacer(flex: 1),
                IconButton(
                  icon: SvgPicture.asset(
                    _tabController.index == 0 ? '${mainPageIcons[0]}_selected.svg' : '${mainPageIcons[0]}.svg',
                  ),
                  onPressed: () {
                    setState(() {
                      _tabController.index = 0;
                    });
                  },
                ),
                const Spacer(flex: 1),
                IconButton(
                  icon: SvgPicture.asset(
                    _tabController.index == 1
                        ? '${mainPageIcons[1]}_selected.svg'
                        : '${mainPageIcons[1]}.svg',
                  ),
                  onPressed: () {
                    setState(() {
                      _tabController.index = 1;
                    });
                  },
                ),
                const Spacer(flex: 3),
                IconButton(
                  icon: SvgPicture.asset(
                    _tabController.index == 2
                        ? '${mainPageIcons[2]}_selected.svg'
                        : '${mainPageIcons[2]}.svg',
                  ),
                  onPressed: () {
                    setState(() {
                      _tabController.index = 2;
                    });
                  },
                ),
                const Spacer(flex: 1),
                IconButton(
                  icon: SvgPicture.asset(
                    _tabController.index == 3
                        ? '${mainPageIcons[3]}_selected.svg'
                        : '${mainPageIcons[3]}.svg',
                  ),
                  onPressed: () {
                    setState(() {
                      _tabController.index = 3;
                    });
                  },
                ),
                const Spacer(flex: 1),
              ],
            ),
          ),
        ));
  }
}
