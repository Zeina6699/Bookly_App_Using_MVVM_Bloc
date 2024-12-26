import 'package:bookly_app/Features/home/Presentation/Views/Widgets/Custom_ListViewItem.dart';
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
          SizedBox(
            width: MediaQuery.of(context).size.width*.50,
            child: CustomListViewItem())
         
        ],
      ),
    );
  }
}
