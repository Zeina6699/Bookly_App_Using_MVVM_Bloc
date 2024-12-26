import 'dart:ui';

import 'package:bookly_app/Features/home/Presentation/Views/Widgets/BookDetailsListViewBody.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
     body:BookDetailsListViewBody()

    );
  }
}