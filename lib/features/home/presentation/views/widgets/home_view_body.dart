import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_main_listview.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          CustomListview(),
          SizedBox(height: 50),
          Text('Best Seller', style: Styles.textStyle18),
          BestSellerItem(),
        ],
      ),
    );
  }
}
