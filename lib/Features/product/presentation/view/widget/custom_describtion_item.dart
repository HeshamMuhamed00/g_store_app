import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:g_store_app/Core/utils/styles.dart';
import 'package:g_store_app/Core/widget/custom_button.dart';

class CustomDescribtionItem extends StatefulWidget {
  const CustomDescribtionItem({super.key});

  @override
  State<CustomDescribtionItem> createState() => _CustomDescribtionItemState();
}

class _CustomDescribtionItemState extends State<CustomDescribtionItem> {
  bool isShowMore = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height / 1.5,
      width: MediaQuery.sizeOf(context).width / 1,
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
            const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 20,
              child: Icon(
                FontAwesomeIcons.solidHeart,
                size: 16,
                color: Colors.red,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                children: [
                  Text(
                    'HandBag \nLeather Wallet',
                    style: Styles.style24.copyWith(color: Colors.black),
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Text(
                        'Price',
                        style: Styles.style16.copyWith(color: Colors.black),
                      ),
                      Text(
                        '99.9\$',
                        style: Styles.style18.copyWith(color: Colors.black),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Text(
              'HandBag Leather Wallet HandBag Leather Wallet HandBag Leather Wallet HandBag Leather Wallet HandBag Leather Wallet HandBag Leather Wallet HandBag Leather Wallet HandBag Leather Wallet HandBag Leather Wallet Leather Wallet HandBag Leather Wallet HandBag Leather Wallet HandBag Leather Wallet HandBag Leather Wallet',
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
