import 'package:flutter/material.dart';
import 'package:g_store_app/Core/utils/styles.dart';
import 'package:g_store_app/Features/product/data/models/category_model.dart';
import 'package:g_store_app/constants.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.categoryModel});
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: kpremiumColor,
            radius: 35,
            child: Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Icon(
                categoryModel.icon,
                size: 32,
              ),
            ),
          ),
          Text(
            categoryModel.categoryName,
            style: Styles.style16.copyWith(color: Colors.black),
          )
        ],
      ),
    );
  }
}
