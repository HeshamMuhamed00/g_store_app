import 'package:flutter/material.dart';
import 'package:g_store_app/Features/product/data/models/product/product.model.dart';
import 'package:g_store_app/Features/product/presentation/view/widget/product_details_view_body.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key, required this.productModel});

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return ProductDetailsViewBody(
      productModel: productModel,
    );
  }
}
