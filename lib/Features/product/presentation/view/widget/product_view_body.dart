import 'package:flutter/material.dart';
import 'package:g_store_app/Core/utils/styles.dart';
import 'package:g_store_app/Features/home/presentation/view/widget/custom_text_feild.dart';
import 'package:g_store_app/Features/product/presentation/view/widget/category_list_view.dart';
import 'package:g_store_app/Features/product/presentation/view/widget/custom_sliver_grid_.dart';

class ProductViewBody extends StatelessWidget {
  const ProductViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff6AE4B4),
      ),
      drawer: const Drawer(
        backgroundColor: Color(0xff6AE4B4),
      ),
      backgroundColor: const Color(0xff6AE4B4),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomTextFeild(
                    hintText: 'Seatsh',
                    prefixIcon: Icon(Icons.search),
                  ),
                  const SizedBox(
                    height: 8,
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
                    'New arrival',
                    style: Styles.style22.copyWith(color: Colors.black),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
            const CustomSliverGrid(),
          ],
        ),
      ),
    );
  }
}
