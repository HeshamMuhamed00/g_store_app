import 'package:flutter/material.dart';
import 'package:g_store_app/Features/product/data/models/product/product.model.dart';
import 'package:g_store_app/Features/product/presentation/view/widget/custom_describtion_item.dart';
import 'package:g_store_app/Features/product/presentation/view/widget/custom_details_image.dart';
import 'package:go_router/go_router.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            GoRouter.of(context).pop('/productView');
          },
          child: const Icon(Icons.arrow_back_ios_new_sharp),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomDetailsImage(
              imageUrl: productModel.image ?? '',
            ),
            const SizedBox(
              height: 12,
            ),
            CustomDescribtionItem(
              productModel: productModel,
            ),
          ],
        ),
      ),
    );
  }
}
