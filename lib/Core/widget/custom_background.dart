import 'dart:ui';

import 'package:flutter/material.dart';

class CustomBackGround extends StatelessWidget {
  const CustomBackGround(
      {super.key, required Center child, required this.customChild});
  final Widget? customChild;
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
                shape: BoxShape.circle, color: Color(0xff58BB44)),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(-2.5, -0.3),
          child: Container(
            height: 300,
            width: 300,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color(0xff58BB44)),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(0, -1),
          child: Container(
            height: 300,
            width: 300,
            decoration: const BoxDecoration(color: Color(0xff007541)),
          ),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
          child: Container(
            decoration: const BoxDecoration(color: Colors.transparent),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: customChild,
        ),
      ],
    );
  }
}
