
import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/features/home/presentation/view/custom/custom_book_image.dart';

class FeaturedListViewBuilder extends StatelessWidget {
  const FeaturedListViewBuilder({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: SizedBox(
       height: MediaQuery.of(context).size.height * .3,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context , index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal:8),
            child: CustomBookImage(),
          );
        }),
      ),
    );
  }
}
