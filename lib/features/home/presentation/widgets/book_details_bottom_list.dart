import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/features/home/presentation/custom/custom_book_image.dart';

class BookDetailsBottomList extends StatelessWidget {
  const BookDetailsBottomList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .17,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CustomBookImage(),
          );
        },
      ),
    );
  }
}
