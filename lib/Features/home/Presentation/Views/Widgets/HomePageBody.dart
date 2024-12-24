import 'package:bookly_app/Features/home/Presentation/Views/Widgets/Custom_AppBar.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          CustomAppBar()
        ],
      );
  }
}