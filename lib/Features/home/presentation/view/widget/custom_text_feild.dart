import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild(
      {super.key,
      required this.hintText,
      required this.prefixIcon,
      this.onChanged,
      this.isScure});
  final String hintText;
  final Widget prefixIcon;
  final Function(String)? onChanged;
  final bool? isScure;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isScure ?? false,
      validator: (data) {
        if (data!.isEmpty) {
          return 'Feild is required';
        }
        return null;
      },
      onChanged: onChanged,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
