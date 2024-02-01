import 'package:flutter/material.dart';
import 'package:g_store_app/Core/utils/styles.dart';
import 'package:g_store_app/constants.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(
      {super.key, required this.icon, required this.categoryName});
  final IconData icon;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: kpremiumColor,
          radius: 35,
          child: Padding(
            padding: const EdgeInsets.only(right: 7),
            child: Icon(
              icon,
              size: 32,
            ),
          ),
        ),
        Text(
          categoryName,
          style: Styles.style16.copyWith(color: Colors.black),
        )
      ],
    );
  }
}
