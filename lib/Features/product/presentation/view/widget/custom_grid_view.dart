import 'package:flutter/material.dart';
import 'package:g_store_app/Features/product/presentation/view/widget/custom_product_item.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: 30,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 0.5,
            mainAxisSpacing: 4,
            mainAxisExtent: 240),
        itemBuilder: (BuildContext context, int index) {
          return const CustomProductItem();
        },
      ),
    );
  }
}
