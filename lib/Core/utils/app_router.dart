import 'package:g_store_app/Features/Splash/splash_view.dart';
import 'package:g_store_app/Features/home/presentation/view/home_view.dart';
import 'package:g_store_app/Features/home/presentation/view/signup_view.dart';
import 'package:g_store_app/Features/product/presentation/view/product_details_view.dart';
import 'package:g_store_app/Features/product/presentation/view/product_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/signupView',
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: '/productView',
        builder: (context, state) => const ProductView(),
      ),
      GoRoute(
        path: '/productDetailsView',
        builder: (context, state) => const ProductDetailsView(),
      ),
    ],
  );
}
