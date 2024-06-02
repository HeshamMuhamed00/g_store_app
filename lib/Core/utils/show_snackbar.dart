import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      margin: const EdgeInsets.only(left: 80, right: 80, bottom: 20),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.lightGreen, width: 1),
        borderRadius: BorderRadius.circular(24),
      ),
      backgroundColor: Colors.green,
      content: Center(
        child: Text(message),
      ),
    ),
  );
}
