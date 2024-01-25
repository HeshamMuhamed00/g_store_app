import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:g_store_app/Features/home/presentation/view/home_view.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();

    navigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'assets/Untitled-1logo.png',
      nextScreen: const HomeView(),
      splashIconSize: 300,
      splashTransition: SplashTransition.scaleTransition,
      duration: 0,
      animationDuration: const Duration(seconds: 1),
    );
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        GoRouter.of(context).push('/homeView');
      },
    );
  }
}
