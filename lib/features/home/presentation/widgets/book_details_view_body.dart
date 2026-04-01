import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/features/home/presentation/custom/custom_book_details_app_bar.dart';
import 'package:flutter_bookly_app/features/home/presentation/widgets/books_bottom_section.dart';
import 'package:flutter_bookly_app/features/home/presentation/widgets/books_details_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              CustomBookDetailsAppbar(),
              SizedBox(height: 10),
              BooksDetailsSection(),
              Expanded(child: SizedBox(height: 50)),
              BooksBottomSection(),
              SizedBox(height: 40),
            ],
          ),
        ),
      ],
    );
  }
}
