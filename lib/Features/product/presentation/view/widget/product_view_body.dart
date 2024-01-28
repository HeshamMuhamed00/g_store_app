import 'package:flutter/material.dart';
import 'package:g_store_app/Features/home/presentation/view/widget/custom_text_feild.dart';
import 'package:g_store_app/Features/product/presentation/view/widget/custom_product_background.dart';

class ProductViewBody extends StatelessWidget {
  const ProductViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: CustomProductBackGroud(
        child: Column(
          children: [
            Expanded(
              child: Image(
                image: AssetImage('assets/Untitled-1text.png'),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomTextFeild(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
