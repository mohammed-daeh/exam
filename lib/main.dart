import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:third_test/core/router/app_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: Locale('ar'),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Somar'),
      initialRoute: AppRouter.main,
      getPages: AppRouter.appPages,
    );
  }
}
