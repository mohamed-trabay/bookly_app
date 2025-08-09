import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageURL});
  final String imageURL;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            image: DecorationImage(
              image: NetworkImage(imageURL),
              fit: BoxFit.fill,
            )),
      ),
    );
  }
}
