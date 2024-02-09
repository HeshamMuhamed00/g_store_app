import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class CustomFavIcon extends StatefulWidget {
  const CustomFavIcon({super.key});

  @override
  State<CustomFavIcon> createState() => _CustomFavIconState();
}

class _CustomFavIconState extends State<CustomFavIcon> {
  bool isFav = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 300),
      child: CircleAvatar(
        backgroundColor: Colors.white38,
        radius: 20,
        child: IconButton(
          onPressed: () {
            setState(() {
              isFav = !isFav;
            });
          },
          color: isFav ? Colors.red : Colors.white,
          icon: const Icon(
            FontAwesomeIcons.solidHeart,
            size: 16,
          ),
        ),
      ),
    );
  }
}
