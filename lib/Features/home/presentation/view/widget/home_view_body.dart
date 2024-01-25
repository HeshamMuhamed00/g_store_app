import 'package:flutter/material.dart';
import 'package:g_store_app/Core/utils/styles.dart';
import 'package:g_store_app/Core/widget/custom_background.dart';
import 'package:g_store_app/Features/home/presentation/view/widget/custom_text_feild.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGround(
      customChild: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Image(
              image: AssetImage('assets/Untitled-1text.png'),
            ),
            const Text(
              'Login',
              style: Styles.style24,
            ),
            const SizedBox(
              height: 1,
            ),
            Text(
              'Welcome Back',
              style: Styles.style22.copyWith(fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 14,
            ),
            const SizedBox(
              height: 4,
            ),
            const CustomTextFeild(
              hintText: 'Username',
              prefixIcon: Icon(
                Icons.person,
                color: Color(0xff1CAA6F),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 4,
            ),
            const CustomTextFeild(
              hintText: 'Password',
              prefixIcon: Icon(
                Icons.key,
                color: Color(0xff1CAA6F),
              ),
            )
          ],
        ),
      ),
      child: const Center(),
    );
  }
}
