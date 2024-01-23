import 'package:flutter/material.dart';
import 'package:g_store_app/Core/widget/custom_background.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGround(
      customChild: Column(
        children: [
          Image(
            image: AssetImage('assets/Untitled-1text.png'),
          ),
        ],
      ),
      child: Center(),
    );
  }
}
