import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListview extends StatelessWidget {
  const CustomListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: AspectRatio(
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
      ),
    );
  }
}
