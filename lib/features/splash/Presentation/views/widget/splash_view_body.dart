import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/core/utils/assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

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
            style: TextStyle(fontWeight: FontWeight.bold , fontSize: 22),
          ),
        ],
      ),
    );
  }
}
