import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:g_store_app/Core/utils/app_router.dart';
import 'package:g_store_app/Core/utils/bloc_observer.dart';
import 'package:g_store_app/Core/utils/service_locator.dart';
import 'package:g_store_app/Features/product/data/repo/product_repo_impl.dart';
import 'package:g_store_app/Features/product/presentation/manager/filter_product_cubit/filter_product_cubit.dart';
import 'package:g_store_app/Features/product/presentation/manager/product_cubit/product_cubit_cubit.dart';
import 'package:g_store_app/firebase_options.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = SimpleBlocObserver();
  setup();
  runApp(const GStoreApp());
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
}

class GStoreApp extends StatelessWidget {
  const GStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => ProductCubit(
                  getIt.get<ProductRepoImpl>(),
                )..fetchProduct()),
        BlocProvider(
            create: (context) => FilterProductCubit(
                  getIt.get<ProductRepoImpl>(),
                )..filterProduct()),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          textTheme: GoogleFonts.openSansTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
