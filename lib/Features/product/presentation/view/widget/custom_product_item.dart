import 'package:flutter/material.dart';
import 'package:g_store_app/Core/utils/styles.dart';

class CustomProductItem extends StatelessWidget {
  const CustomProductItem({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
  });

  final String imageUrl, title;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.27,
            width: MediaQuery.of(context).size.width * 0.45,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.white.withOpacity(1),
              elevation: 2,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Styles.style16.copyWith(color: Colors.black),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          (price.toString() + r'$'),
                          style: Styles.style16.copyWith(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.shopping_cart_checkout,
                          color: Colors.black,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 14,
            top: 10,
            child: ClipRRect(
              child: Image.network(
                imageUrl,
                height: MediaQuery.of(context).size.height * 0.14,
                width: MediaQuery.of(context).size.width * 0.4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
