import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../platform/size_config.dart';

class RecipeSearch extends StatelessWidget {
  const RecipeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
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
        SizedBox(
          height: SizeConfig.blockSizeVertical * 8.05,
          child: AspectRatio(
              aspectRatio: 1,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Transform.scale(scale: 1.2, child: SvgPicture.asset('assets/icons/setting.svg')))),
        ),
      ],
    );
  }
}