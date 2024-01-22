import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key, required Center child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: const AlignmentDirectional(3, -0.3),
          child: Container(
            height: 300,
            width: 300,
            decoration: const BoxDecoration(),
          ),
        )
      ],
    );
  }
}
