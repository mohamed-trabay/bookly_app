import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageURL});
  final String imageURL;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      child: AspectRatio(
          aspectRatio: 2.6 / 4,
          child: CachedNetworkImage(
            imageUrl: imageURL,
            placeholder: (context, url) => const CustomLoadingIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
            fit: BoxFit.fill,
          )),
    );
  }
}
