import 'dart:ui';

import 'package:flutter/material.dart';

class CustomBackGround extends StatelessWidget {
  const CustomBackGround({super.key, required Center child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: const AlignmentDirectional(2.5, -0.3),
          child: Container(
            height: 300,
            width: 300,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.greenAccent),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(-2.5, -0.3),
          child: Container(
            height: 300,
            width: 300,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.greenAccent),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(0, -1),
          child: Container(
            height: 300,
            width: 300,
            decoration: const BoxDecoration(color: Colors.green),
          ),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
          child: Container(
            decoration: const BoxDecoration(color: Colors.transparent),
          ),
        ),
      ],
    );
  }
}
