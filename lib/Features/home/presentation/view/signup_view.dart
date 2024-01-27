import 'package:flutter/material.dart';
import 'package:g_store_app/Core/utils/styles.dart';
import 'package:g_store_app/Core/widget/custom_background.dart';
import 'package:g_store_app/Core/widget/custom_button.dart';
import 'package:g_store_app/Features/home/presentation/view/widget/custom_text_feild.dart';
import 'package:g_store_app/Features/home/presentation/view/widget/signup_and_login_nacigate.dart';
import 'package:go_router/go_router.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackGround(
        customChild: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Image(
                image: AssetImage('assets/Untitled-1text.png'),
              ),
              const Text(
                'Sign Up',
                style: Styles.style24,
              ),
              const SizedBox(
                height: 1,
              ),
              Text(
                'Create Account',
                style: Styles.style22.copyWith(fontWeight: FontWeight.normal),
              ),
              const SizedBox(
                height: 18,
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
              ),
              const SizedBox(
                height: 60,
              ),
              const CustomButton(
                text: 'Sign Up',
              ),
              const SizedBox(
                height: 6,
              ),
              SignUpAndLoginNavigate(
                text: 'Already have an account ? ',
                textButton: 'Login',
                onTap: () {
                  GoRouter.of(context).pop('/homeView');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
