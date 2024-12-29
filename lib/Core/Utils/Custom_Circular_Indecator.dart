import 'package:flutter/material.dart';

class CircularLoadingIndecator extends StatelessWidget {
  const CircularLoadingIndecator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}