import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/core/utils/assets.dart';
import 'package:flutter_bookly_app/features/home/presentation/view/home_view.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    navigatToHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetsData.logo),
          SizedBox(height: 20),
          Text(
            "Read free Books",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ],
      ),
    );
  }

  //*  navigatToHome Method

  void navigatToHome() {
    Future.delayed(
      Duration(seconds:2),
      () => Get.to(
        () => HomeView(),
        transition: Transition.fade,
        duration: Duration(seconds: 1),
      ),
    );
  }
}
