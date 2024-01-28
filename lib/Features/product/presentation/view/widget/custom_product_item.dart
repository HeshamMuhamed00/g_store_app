import 'package:flutter/material.dart';
import 'package:g_store_app/Core/utils/styles.dart';

class CustomProductItem extends StatelessWidget {
  const CustomProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.23,
            width: MediaQuery.of(context).size.width * 0.34,
            child: const Card(
              elevation: 50,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sport shose',
                      style: Styles.style16,
                    ),
                    Text(
                      r'99.9$',
                      style: Styles.style14,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 9,
            top: 20,
            child: Image.network(
              'https://i.imgur.com/QkIa5tT.jpeg',
              height: MediaQuery.of(context).size.height * 0.13,
              width: MediaQuery.of(context).size.width * 0.3,
            ),
          ),
        ],
      ),
    );
  }
}
