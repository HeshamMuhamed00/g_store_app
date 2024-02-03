import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:g_store_app/Features/product/data/models/category_model.dart';
import 'package:g_store_app/Features/product/presentation/view/widget/category_item.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  final List<CategoryModel> category = const [
    CategoryModel(categoryName: 'Ladies', icon: FontAwesomeIcons.bagShopping),
    CategoryModel(
        categoryName: 'Travel', icon: FontAwesomeIcons.suitcaseRolling),
    CategoryModel(categoryName: 'School', icon: FontAwesomeIcons.graduationCap),
    CategoryModel(categoryName: 'Beach', icon: FontAwesomeIcons.umbrellaBeach),
    CategoryModel(categoryName: 'Shoes', icon: FontAwesomeIcons.shoePrints),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 8,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (context, index) {
          return CategoryItem(
            categoryModel: category[index],
          );
        },
      ),
    );
  }
}
