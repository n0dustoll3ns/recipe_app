import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/presentation/screens/search_page.dart';

import '../../../platform/size_config.dart';

class RecipeSearch extends StatelessWidget {
  const RecipeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal * 4),
      child: SizedBox(
        height: 55,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextFormField(
                onTap: () => Navigator.of(context).push(_createRoute()),
                decoration: InputDecoration(
                    hintText: 'Search Recipe',
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(
                        SizeConfig.blockSizeVertical * 1.631,
                      ),
                      child: SvgPicture.asset('assets/icons/search.svg'),
                    )),
              ),
            ),
            SizedBox(width: SizeConfig.blockSizeHorizontal * 5),
            AspectRatio(
                aspectRatio: 1,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Transform.scale(scale: 1.2, child: SvgPicture.asset('assets/icons/setting.svg')))),
          ],
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const SearchPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
