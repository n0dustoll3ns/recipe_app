import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:recipe_app/platform/size_config.dart';

class ElevatedRecipeCard extends StatelessWidget {
  const ElevatedRecipeCard({super.key, required this.rating, required this.name, required this.img});
  final double rating;
  final String name;
  final String img;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: SizeConfig.blockSizeVertical * 6.773,
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0xffD9D9D9),
              ),
              height: SizeConfig.blockSizeVertical * 21.182,
            ),
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [Image.asset(img)],
        )
      ],
    );
  }
}
