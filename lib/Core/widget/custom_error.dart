import 'package:flutter/material.dart';
import 'package:g_store_app/Core/utils/styles.dart';

class CustomError extends StatelessWidget {
  const CustomError({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      errMessage,
      style: Styles.style18.copyWith(color: Colors.black),
    ));
  }
}
