import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/core/utils/assets.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24 , left: 20 , top: 30 , bottom: 15 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AssetsData.logo, height: 18),
          IconButton(onPressed: () {}, icon: Icon(Icons.search, size: 28)),
        ],
      ),
    );
  }
}
