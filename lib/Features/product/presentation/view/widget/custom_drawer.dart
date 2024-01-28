import 'package:flutter/material.dart';

class CustomDrower extends StatelessWidget {
  const CustomDrower({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: Drawer(
        elevation: 0,
        width: 150,
        backgroundColor: Color(0xff8cbc46),
      ),
    );
  }
}
