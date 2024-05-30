import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:g_store_app/Core/utils/styles.dart';
import 'package:g_store_app/Core/widget/custom_background.dart';
import 'package:g_store_app/Core/widget/custom_button.dart';
import 'package:g_store_app/Features/home/presentation/view/widget/custom_text_feild.dart';
import 'package:g_store_app/Features/home/presentation/view/widget/signup_and_login_nacigate.dart';
import 'package:go_router/go_router.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  String? email, password;

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
                image: AssetImage('assets/Untitled-1.png'),
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
              CustomTextFeild(
                onChanged: (data) {
                  email = data;
                },
                hintText: 'Username',
                prefixIcon: const Icon(
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
              CustomTextFeild(
                onChanged: (data) {
                  password = data;
                },
                hintText: 'Password',
                prefixIcon: const Icon(
                  Icons.key,
                  color: Color(0xff1CAA6F),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              CustomButton(
                onPressed: () async {
                  var auth = FirebaseAuth.instance;
                  UserCredential user =
                      await auth.createUserWithEmailAndPassword(
                          email: email!, password: password!);
                  log(user.user!.displayName!);
                },
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
