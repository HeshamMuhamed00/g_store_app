import 'package:flutter/material.dart';
import 'package:g_store_app/Core/utils/styles.dart';
import 'package:g_store_app/Features/product/presentation/view/widget/category_list_view.dart';
import 'package:g_store_app/Features/product/presentation/view/widget/custom_grid_view.dart';

class ProductViewBody extends StatelessWidget {
  const ProductViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      backgroundColor: const Color(0xff6AE4B4),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              'Choose by category',
              style: Styles.style22.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 20,
            ),
            const CategoryListView(),
            Text(
              'New arrivel',
              style: Styles.style22.copyWith(color: Colors.black),
            ),
            const CustomGridView(),
          ],
        ),
      ),
    );
  }
}
