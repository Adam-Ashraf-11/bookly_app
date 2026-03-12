import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/features/splash/Presentation/views/widget/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
      body: SplashViewBody(),
      );
  }
}
