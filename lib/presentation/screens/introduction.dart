// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/presentation/screens/sign_in.dart';

import '../../platform/size_config.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    const deviceHeightCoef = 0.86;
    SizeConfig(context);

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/intro.png', fit: BoxFit.cover),
          Column(
            children: [
              SizedBox(height: SizeConfig.blockSizeVertical * 12.807),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 9.72,
                width: SizeConfig.blockSizeVertical * 9.72,
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Image.asset(
                    'assets/icons/chefshat.png',
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .017 * deviceHeightCoef,
              ),
              Text(
                '100K+ Premium Recipe',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white),
              ),
              const Spacer(),
              Text(
                'Get \nCooking',
                maxLines: 2,
                textAlign: TextAlign.center,
                softWrap: true,
                style: Theme.of(context).textTheme.displayMedium!.copyWith(color: Colors.white),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .019 * deviceHeightCoef,
              ),
              Text(
                'Simple way to find Tasty Recipe',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white),
              ),
              SizedBox(height: SizeConfig.blockSizeVertical * 7.881),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          vertical: SizeConfig.blockSizeVertical * 1.847,
                          horizontal: SizeConfig.blockSizeHorizontal * 13.333)),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (BuildContext context) => const SignIn()));
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text('Start cooking'),
                      const SizedBox(
                        width: 9,
                      ),
                      SvgPicture.asset('assets/icons/arrow-right.svg'),
                    ],
                  )),
              SizedBox(height: SizeConfig.blockSizeVertical * 10.345),
            ],
          ),
        ],
      ),
    );
  }
}
