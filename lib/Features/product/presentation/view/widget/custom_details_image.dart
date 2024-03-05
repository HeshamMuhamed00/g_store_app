import 'package:flutter/material.dart';

class CustomDetailsImage extends StatelessWidget {
  const CustomDetailsImage({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      height: MediaQuery.of(context).size.height / 2.7,
      width: MediaQuery.of(context).size.height / 2.9,
      fit: BoxFit.fill,
    );
  }
}
