import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_listview.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'best_seller_listview.dart';
import 'custom_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomAppBar(),
              FeaturedBooksListview(),
              SizedBox(height: 50),
              Text('Newest Books', style: Styles.textStyle18),
              SizedBox(height: 20),
            ]),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(right: 45.7, left: 30.0),
            child: BestSellerListview(),
          ),
        )
      ],
    );
  }
}
