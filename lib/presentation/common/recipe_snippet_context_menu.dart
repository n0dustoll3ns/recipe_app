import 'package:flutter/cupertino.dart';

class RecipeCardContextMenu extends StatelessWidget {
  final Widget child;
  const RecipeCardContextMenu({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return CupertinoContextMenu(
      actions: [
        CupertinoContextMenuAction(
          onPressed: () {
            Navigator.of(context).pop();
          },
          trailingIcon: CupertinoIcons.arrowshape_turn_up_right_fill,
          child: const Text("Share"),
        ),
        CupertinoContextMenuAction(
          onPressed: () {
            Navigator.of(context).pop();
          },
          trailingIcon: CupertinoIcons.star_fill,
          child: const Text("Save To Gallery"),
        ),
        CupertinoContextMenuAction(
          onPressed: () {
            Navigator.of(context).pop();
          },
          trailingIcon: CupertinoIcons.ellipses_bubble_fill,
          child: const Text("Review"),
        ),
        CupertinoContextMenuAction(
          onPressed: () {
            Navigator.of(context).pop();
          },
          trailingIcon: CupertinoIcons.bookmark_solid,
          child: const Text("Save"),
        )
      ],
      child: child,
    );
  }
}
