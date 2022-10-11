import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../platform/size_config.dart';

class FavoriteLabel extends StatefulWidget {
  const FavoriteLabel({
    Key? key,
  }) : super(key: key);

  @override
  State<FavoriteLabel> createState() => _FavoriteLabelState();
}

class _FavoriteLabelState extends State<FavoriteLabel> {
  bool isInFavourite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: SizeConfig.blockSizeHorizontal * 6.4,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: AspectRatio(
            aspectRatio: 1,
            child: Transform.scale(
                scale: 0.7,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    setState(() => isInFavourite = !isInFavourite);
                  },
                  icon: SvgPicture.asset('assets/icons/favorite.svg',
                      color: isInFavourite ? Theme.of(context).primaryColor : null),
                ))));
  }
}
