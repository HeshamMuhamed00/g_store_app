import 'package:flutter/material.dart';

class CustomDetailsImage extends StatelessWidget {
  const CustomDetailsImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg',
      height: MediaQuery.of(context).size.height / 2.8,
      width: MediaQuery.of(context).size.height / 2.7,
      fit: BoxFit.fill,
    );
  }
}
