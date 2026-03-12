import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/core/utils/const.dart';
import 'package:flutter_bookly_app/features/splash/Presentation/views/splash_view.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: AppColors().primaryColor),
      home: const SplashView(),
    );
  }
}
