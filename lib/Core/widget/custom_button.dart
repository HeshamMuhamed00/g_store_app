import 'package:flutter/material.dart';
import 'package:g_store_app/Core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.onPressed});
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.06,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xff1CAA6F),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: Styles.style18.copyWith(color: Colors.black),
        ),
      ),
    );
  }
}
