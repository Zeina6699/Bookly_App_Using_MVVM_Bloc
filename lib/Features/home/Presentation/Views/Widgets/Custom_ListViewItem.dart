import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key, required this.imageURL});
  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(17),
      child: AspectRatio(
        aspectRatio: 0.9/ 1.5,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imageURL,
          placeholder: (context, url) =>const Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => const Icon(Icons.error),
          )),
    );
      /*Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.red,
            image:  DecorationImage(
                fit: BoxFit.fill, 
                image:NetworkImage(imageURL)
            ))));*/
  }
}
