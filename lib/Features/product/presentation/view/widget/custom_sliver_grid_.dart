import 'package:flutter/material.dart';
import 'package:g_store_app/Features/product/presentation/view/widget/custom_product_item.dart';

class CustomSliverGrid extends StatelessWidget {
  const CustomSliverGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 0.5,
        mainAxisSpacing: 4,
        mainAxisExtent: 240,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return const CustomProductItem();
        },
        childCount: 30,
      ),
    );
  }
}
