import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/core/utils/styles.dart';
import 'package:flutter_bookly_app/features/home/presentation/view/custom/custom_appBar.dart';
import 'package:flutter_bookly_app/features/home/presentation/view/widgets/best_seller_sliver_list.dart';
import 'package:flutter_bookly_app/features/home/presentation/view/widgets/featured_listviewBuilder.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppbar(),
              const FeaturedListViewBuilder(),
              const SizedBox(height: 26),
              bestSellerText(),
              const SizedBox(height: 15),
            ],
          ),
        ),
        const BestSallerSliverList(),
      ],
    );
  }

  Padding bestSellerText() {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text("Best Seller", style: Styles.textStyle18),
    );
  }
}

// تعديل الـ Widget ليكون SliverList
