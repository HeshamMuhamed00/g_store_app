import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpText extends StatelessWidget {
  const SignUpText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Dont have an account ? '),
        GestureDetector(
          onTap: () {
            GoRouter.of(context).push('/signupView');
          },
          child: const Text('Sign Up'),
        ),
      ],
    );
  }
}
