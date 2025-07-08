import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.amber,
                  image: DecorationImage(
                    image: AssetImage(AssetsData.exPic),
                    fit: BoxFit.fill,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
