import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/platform/size_config.dart';
import 'package:recipe_app/presentation/screens/sign_in.dart';

import '../common/social_web_sign_up_buttons.dart';
import 'main_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool termsAccepted = false;
  @override
  Widget build(BuildContext context) {
    var orangeTextButtonStyle = GoogleFonts.poppins(
      fontWeight: FontWeight.w400,
      fontSize: 11,
      letterSpacing: 0,
      color: const Color(0xFFFF9C00),
    );
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            height: SizeConfig.blockSizeVertical * 100,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal * 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(flex: 6),
                  Text('Create an account',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 20, color: Colors.black)),
                  Text("Let’s help you set up your account, \nit won’t take long.",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          letterSpacing: 0,
                          color: const Color(0xFF121212))),
                  const Spacer(flex: 3),
                  Text(
                    'Name',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(color: const Color(0xFF121212)),
                  ),
                  const Spacer(flex: 1),
                  TextFormField(
                    decoration: const InputDecoration(hintText: 'Enter Name'),
                  ),
                  Text(
                    'Email',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(color: const Color(0xFF121212)),
                  ),
                  const Spacer(flex: 1),
                  TextFormField(
                    decoration: const InputDecoration(hintText: 'Enter Email'),
                  ),
                  const Spacer(flex: 3),
                  Text(
                    'Enter Password',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(color: const Color(0xFF121212)),
                  ),
                  const Spacer(flex: 1),
                  TextFormField(
                    decoration: const InputDecoration(hintText: 'Enter Password'),
                  ),
                  const Spacer(flex: 3),
                  Text(
                    'Confirm Password',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(color: const Color(0xFF121212)),
                  ),
                  const Spacer(flex: 1),
                  TextFormField(
                    decoration: const InputDecoration(hintText: 'Confirm Password'),
                  ),
                  const Spacer(flex: 3),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Checkbox(
                              checkColor: const Color(0xFFFF9C00),
                              activeColor: Colors.transparent,
                              side: const BorderSide(width: 1, color: Color(0xFFFF9C00)),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                              ),
                              value: termsAccepted,
                              onChanged: (value) {
                                setState(() {
                                  termsAccepted = !termsAccepted;
                                });
                              }),
                          SizedBox(
                            width: SizeConfig.blockSizeHorizontal * 1.33,
                          ),
                          Text(
                            'Accept terms & Condition',
                            style: orangeTextButtonStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(flex: 2),
                  Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: MediaQuery.of(context).size.width / 4,
                                vertical: SizeConfig.blockSizeVertical * 2)),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context, MaterialPageRoute(builder: (BuildContext context) => const Main()));
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text('Sign Up'),
                            const SizedBox(
                              width: 9,
                            ),
                            SvgPicture.asset('assets/icons/arrow-right.svg'),
                          ],
                        )),
                  ),
                  const Spacer(flex: 1),
                  SocialNetworksAuthButtons(
                    onPress: () {},
                  ),
                  const Spacer(flex: 2),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context, MaterialPageRoute(builder: (BuildContext context) => const SignIn()));
                      },
                      child: RichText(
                          text: TextSpan(
                        children: [
                          TextSpan(
                              text: "Already a member? ",
                              style: orangeTextButtonStyle.copyWith(color: Colors.black)),
                          TextSpan(text: "Sign In", style: orangeTextButtonStyle),
                        ],
                      )),
                    ),
                  ),
                  const Spacer(flex: 6),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
