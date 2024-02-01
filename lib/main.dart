import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:g_store_app/Core/utils/app_router.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const GStoreApp());
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
}

class GStoreApp extends StatelessWidget {
  const GStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: GoogleFonts.openSansTextTheme(ThemeData.dark().textTheme),
      ),
    );
  }
}
