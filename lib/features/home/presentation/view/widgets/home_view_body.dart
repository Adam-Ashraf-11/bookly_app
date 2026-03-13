import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/features/home/presentation/view/custom/custom_appBar.dart';
import 'package:flutter_bookly_app/features/home/presentation/view/widgets/featured_listviewBuilder.dart';
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppbar(),
          FeaturedListViewBuilder(),
        ],
      ),
    );
  }
}
