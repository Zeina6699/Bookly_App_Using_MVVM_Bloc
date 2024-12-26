import 'package:flutter/material.dart';
import 'Custom_BookDetailsAppBar,dart';

class BookDetailsListViewBody extends StatelessWidget {
  const BookDetailsListViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child:  Column(
        children: [
          SafeArea(child: CustomBookDetailsAppBar()),
         
        ],
      ),
    );
  }
}
