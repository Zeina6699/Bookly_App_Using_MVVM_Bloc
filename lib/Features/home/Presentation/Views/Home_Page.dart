import 'package:bookly_app/Features/home/Presentation/Views/Widgets/Custom_AppBar.dart';
import 'package:bookly_app/Features/home/Presentation/Views/Widgets/Custom_ListViewItem.dart';
import 'package:bookly_app/Features/home/Presentation/Views/Widgets/HomePageBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
     body: HomePageBody(),
    );
  }
}
