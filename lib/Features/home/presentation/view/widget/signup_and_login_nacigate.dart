import 'package:flutter/material.dart';

class SignUpAndLoginNavigate extends StatelessWidget {
  const SignUpAndLoginNavigate(
      {super.key, required this.text, required this.textButton, this.onTap});

  final String text;
  final String textButton;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text),
        GestureDetector(
          onTap: onTap,
          child: Text(textButton),
        ),
      ],
    );
  }
}
