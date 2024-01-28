import 'package:flutter/material.dart';

class CustomProductBackGroud extends StatelessWidget {
  const CustomProductBackGroud({super.key, this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.29,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Color(0xff8cbc46),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(32),
          bottomRight: Radius.circular(32),
        ),
      ),
      child: child,
    );
  }
}
