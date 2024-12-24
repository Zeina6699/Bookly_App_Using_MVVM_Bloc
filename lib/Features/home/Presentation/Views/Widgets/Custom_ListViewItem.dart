
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:16),
      child: AspectRatio(
        aspectRatio: 1/1.6,
        child: Container(
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.red,
            image:const DecorationImage(
              fit:BoxFit.fill,
              image:AssetImage("assets/images/test.png"))
          ),
        ),
      ),
    );
  }
}