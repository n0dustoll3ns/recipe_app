import 'package:flutter/material.dart';

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
            Text(
              'Hello',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(color: const Color(0xFF121212)),
            ),
            Text(
              'Welcome back!',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(color: const Color(0xFF121212)),
            ),
            Text(
              'Email',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(color: const Color(0xFF121212)),
            ),
            TextFormField(
              decoration: InputDecoration(hintText: 'Enter Email'),
            ),
            Text(
              'Enter password',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(color: const Color(0xFF121212)),
            ),
            TextFormField(
              decoration: InputDecoration(hintText: 'Enter Password'),
            ),
          ],
        ),
      ),
    );
  }
}
