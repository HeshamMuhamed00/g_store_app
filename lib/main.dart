import 'package:flutter/material.dart';
import 'package:g_store_app/Core/utils/app_router.dart';

void main() {
  runApp(const GStoreApp());
}

class GStoreApp extends StatelessWidget {
  const GStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    );
  }
}
