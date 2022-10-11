import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        actions: [
          SvgPicture.asset('assets/icons/3dots.svg'),
        ],
      ),
    );
  }
}
