import 'package:flutter/material.dart';
import 'package:g_store_app/Core/utils/styles.dart';
import 'package:g_store_app/Core/widget/custom_button.dart';
import 'package:g_store_app/Features/product/data/models/product/product.model.dart';
import 'package:g_store_app/Features/product/presentation/view/widget/custom_fav_icon.dart';

class CustomDescribtionItem extends StatefulWidget {
  const CustomDescribtionItem({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  State<CustomDescribtionItem> createState() => _CustomDescribtionItemState();
}

class _CustomDescribtionItemState extends State<CustomDescribtionItem> {
  bool isShowMore = true;
  bool isFav = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height / 1.5,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xff6AE4B4),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 22,
            ),
            const CustomFavIcon(),
            const SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.productModel.title ?? '',
                      maxLines: 2,
                      overflow: TextOverflow.clip,
                      style: Styles.style24.copyWith(color: Colors.black),
                    ),
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Text(
                        'Price',
                        style: Styles.style16.copyWith(color: Colors.black),
                      ),
                      Text(
                        (widget.productModel.price.toString() + r'$'),
                        style: Styles.style18.copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              widget.productModel.description ?? '',
              maxLines: isShowMore ? 3 : null,
              overflow: TextOverflow.fade,
              style: Styles.style18.copyWith(color: Colors.black),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  isShowMore = !isShowMore;
                });
              },
              child: Text(
                isShowMore ? 'Show More' : 'Show Less',
                style: Styles.style18.copyWith(color: Colors.black),
              ),
            ),
            const CustomButton(text: 'Add to cart')
          ],
        ),
      ),
    );
  }
}
