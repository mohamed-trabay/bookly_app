import 'package:bookly_app/features/home/presentation/views/widgets/custom_main_listview.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'best_seller_listview.dart';
import 'custom_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return    const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child:       Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                CustomListview(),
                SizedBox(height: 50),
                Text('Best Seller', style: Styles.textStyle18),
                SizedBox(height: 20),

              ],
            ),
          )
          ,
        ),SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.only(right: 45.7, left: 30.0),
            child: BestSellerListview(),
          ),
        )
      ],

    );
  }
}
