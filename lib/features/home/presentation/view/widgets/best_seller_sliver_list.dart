import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/features/home/presentation/view/custom/custom_bestsellesr_item.dart';

class NewestBooksrSliverList extends StatelessWidget {
  const NewestBooksrSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const BestSellesrItem();
        },
        childCount: 10, // عدد العناصر
      ),
    );
  }
}
