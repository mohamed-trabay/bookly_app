import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class MainItem extends StatelessWidget {
  const MainItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return
      AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              color: Colors.amber,
              image: DecorationImage(
                image: AssetImage(AssetsData.exPic),
                fit: BoxFit.fill,
              )),
        ),
      );
  }
}
