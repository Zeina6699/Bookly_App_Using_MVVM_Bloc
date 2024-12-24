import 'package:bookly_app/Features/home/Presentation/Views/Home_Page.dart';
import 'package:bookly_app/Features/home/Presentation/Views/Widgets/Custom_AppBar.dart';
import 'package:bookly_app/Features/home/Presentation/Views/Widgets/Custom_ListView.dart';
import 'package:bookly_app/Features/home/Presentation/Views/Widgets/Custom_ListViewItem.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
        children: [
          CustomAppBar(),
          CustomBooksListView()
        ],
      );
  }
}
