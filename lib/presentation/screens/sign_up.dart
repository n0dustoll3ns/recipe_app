import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/platform/size_config.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    var orangeTextButtonStyle = GoogleFonts.poppins(
      fontWeight: FontWeight.w400,
      fontSize: 11,
      letterSpacing: 0,
      color: const Color(0xFFFF9C00),
    );
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * .05),
        child: SingleChildScrollView(
          child: SizedBox(
            height: SizeConfig.blockSizeVertical * 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(flex: 6),
                Text('Create an account',
                    style:
                        GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 20, color: Colors.black)),
                Text("Let’s help you set up your account, \nit won’t take long.",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        letterSpacing: 0,
                        color: const Color(0xFF121212))),
                Spacer(flex: 7),
                Text(
                  'Email',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(color: const Color(0xFF121212)),
                ),
                Spacer(flex: 1),
                TextFormField(
                  decoration: const InputDecoration(hintText: 'Enter Email'),
                ),
                Spacer(flex: 4),
                Text(
                  'Enter password',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(color: const Color(0xFF121212)),
                ),
                Spacer(flex: 1),
                TextFormField(
                  decoration: const InputDecoration(hintText: 'Enter Password'),
                ),
                Spacer(flex: 3),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: orangeTextButtonStyle,
                    ),
                  ),
                ),
                Spacer(flex: 3),
                Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: MediaQuery.of(context).size.width / 4,
                              vertical: SizeConfig.blockSizeVertical * 2)),
                      onPressed: () {
                        // Navigator.pushReplacement(
                        //     context, MaterialPageRoute(builder: (BuildContext context) => const SignIn()));
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text('Sign in'),
                          const SizedBox(
                            width: 9,
                          ),
                          SvgPicture.asset('assets/icons/arrow-right.svg'),
                        ],
                      )),
                ),
                Spacer(flex: 3),
                Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.height / 7.5,
                        height: 0.7,
                        color: const Color(0XFFD9D9D9),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          'Or Sign in With',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400, fontSize: 11, color: const Color(0XFFD9D9D9)),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.height / 7.5,
                        height: 0.7,
                        color: const Color(0XFFD9D9D9),
                      ),
                    ],
                  ),
                ),
                Spacer(flex: 3),
                Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 44,
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal * 0.667)),
                            onPressed: () {},
                            child: SvgPicture.asset('assets/icons/google_logo.svg'),
                          ),
                        ),
                      ),
                      SizedBox(width: SizeConfig.blockSizeHorizontal * 6.67),
                      SizedBox(
                          height: 44,
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal * 0.667)),
                                onPressed: () {},
                                child: SvgPicture.asset('assets/icons/facebook_logo.svg')),
                          )),
                    ],
                  ),
                ),
                Spacer(flex: 7),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: RichText(
                        text: TextSpan(
                      children: [
                        TextSpan(
                            text: "Don't have an account? ",
                            style: orangeTextButtonStyle.copyWith(color: Colors.black)),
                        TextSpan(text: "Sign up", style: orangeTextButtonStyle),
                      ],
                    )),
                  ),
                ),
                Spacer(flex: 12),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
