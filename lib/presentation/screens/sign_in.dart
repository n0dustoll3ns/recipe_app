import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * .05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .1,
            ),
            Text('Hello,',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                    letterSpacing: 0,
                    color: const Color(0xFF121212))),
            Text('Welcome back!',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    letterSpacing: 0,
                    color: const Color(0xFF121212))),
            SizedBox(
              height: MediaQuery.of(context).size.height / 12,
            ),
            Text(
              'Email',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(color: const Color(0xFF121212)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 112,
            ),
            TextFormField(
              decoration: const InputDecoration(hintText: 'Enter Email'),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              'Enter password',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(color: const Color(0xFF121212)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 112,
            ),
            TextFormField(
              decoration: const InputDecoration(hintText: 'Enter Password'),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 142,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 11,
                    letterSpacing: 0,
                    color: const Color(0xFFFF9C00),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 250,
            ),
            Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 4)),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (BuildContext context) => const SignIn()));
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
            SizedBox(
              height: MediaQuery.of(context).size.height / 250,
            ),
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
          ],
        ),
      ),
    );
  }
}
