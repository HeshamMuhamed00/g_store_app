import 'package:flutter/material.dart';
import 'package:g_store_app/Features/product/presentation/view/widget/custom_Product_item.dart';

class ProductViewBody extends StatelessWidget {
  const ProductViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      backgroundColor: const Color(0xff6AE4B4),
      body: const Column(
        children: [
          CustomProductItem(),
        ],
      ),
    );
  }
}
