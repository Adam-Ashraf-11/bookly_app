import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/core/utils/styles.dart';
import 'package:flutter_bookly_app/features/home/presentation/view/widgets/book_details_bottom_list.dart';

class BooksBottomSection extends StatelessWidget {
  const BooksBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            "You can also like",
            style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(height: 10),
        BookDetailsBottomList(),
      ],
    );
  }
}
