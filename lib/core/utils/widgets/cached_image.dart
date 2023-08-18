import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedImage extends StatelessWidget {
  const CachedImage({Key? key, required this.bookImage}) : super(key: key);

  final String bookImage;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: bookImage,
      errorWidget: (context, url, error) => const Center(child: Icon(Icons.not_interested_outlined),),
      fit: BoxFit.fill,
      alignment: Alignment.center,
    );
  }
}
