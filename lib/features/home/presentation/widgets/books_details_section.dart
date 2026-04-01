import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/core/utils/styles.dart';
import 'package:flutter_bookly_app/features/home/presentation/custom/custom_book_image.dart';
import 'package:flutter_bookly_app/features/home/presentation/widgets/book_button.dart';
import 'package:flutter_bookly_app/features/home/presentation/widgets/book_rating.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .27),
          child: AspectRatio(aspectRatio: 2 / 3, child: CustomBookImage()),
        ),
        SizedBox(height: 20),
        Text("THe Jungle Book", style: Styles.textStyle30),
        SizedBox(height: 6),
        Opacity(
          opacity: .7,
          child: Text("Rudyard Kipling", style: Styles.textStyle18),
        ),
        SizedBox(height: 4),
        BookRating(mainAxisAlignment: MainAxisAlignment.center),
        BooksButton(),
      ],
    );
  }
}
