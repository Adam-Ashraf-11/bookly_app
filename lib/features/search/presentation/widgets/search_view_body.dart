import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/core/utils/styles.dart';
import 'package:flutter_bookly_app/features/home/presentation/view/widgets/best_seller_sliver_list.dart';
import 'package:flutter_bookly_app/features/search/presentation/widgets/custom_text_field_search.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomTextFieldSearch(),
                const SizedBox(height: 15),
                Text("Search Results", style: Styles.textStyle18),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
        NewestBooksrSliverList(),
      ],
    );
  }
}
