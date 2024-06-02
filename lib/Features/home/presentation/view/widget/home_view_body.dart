import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:g_store_app/Core/utils/show_snackbar.dart';
import 'package:g_store_app/Core/utils/styles.dart';
import 'package:g_store_app/Core/widget/custom_background.dart';
import 'package:g_store_app/Core/widget/custom_button.dart';
import 'package:g_store_app/Features/home/presentation/view/widget/custom_text_feild.dart';
import 'package:g_store_app/Features/home/presentation/view/widget/signup_and_login_nacigate.dart';
import 'package:go_router/go_router.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  String? email, password;
  GlobalKey<FormState> formkKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return CustomBackGround(
      customChild: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Form(
          key: formkKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Image(
                  image: AssetImage('assets/Untitled-1.png'),
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
                  isScure: true,
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
                    if (formkKey.currentState!.validate()) {
                      try {
                        await loginUser();
                        GoRouter.of(context).push('/productView');
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'user-not-found') {
                          showSnackBar(context, 'User not found');
                        } else if (e.code == 'wrong-password') {
                          showSnackBar(context, 'wrong Password');
                        }
                      }
                    }
                  },
                  text: 'Login',
                ),
                const SizedBox(
                  height: 6,
                ),
                SignUpAndLoginNavigate(
                  text: 'Dont have an account ? ',
                  textButton: 'Sign Up',
                  onTap: () {
                    GoRouter.of(context).push('/signupView');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      child: const Center(),
    );
  }

  Future<void> loginUser() async {
    UserCredential user = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email!, password: password!);
  }
}
