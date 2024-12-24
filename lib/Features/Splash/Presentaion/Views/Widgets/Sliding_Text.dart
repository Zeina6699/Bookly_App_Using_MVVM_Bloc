import 'dart:ui';

import 'package:flutter/material.dart';

class Sliding_Text extends StatelessWidget {
  const Sliding_Text({
    super.key,
    required this.slidingAnimaion,
  });

  final Animation<Offset> slidingAnimaion;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
     animation: slidingAnimaion,
      builder: (context,_) {
        return SlideTransition(
         position: slidingAnimaion,
          child: const Text("Read Books For Free",
           textAlign:TextAlign.center),
        );
      }
    );
  }
}