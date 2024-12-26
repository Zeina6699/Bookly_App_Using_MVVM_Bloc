import 'package:bookly_app/Features/home/Presentation/Views/Widgets/Custom_ListViewItem.dart';
import 'package:flutter/material.dart';

class SimilarBookslistview extends StatelessWidget {
  const SimilarBookslistview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.22,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
        return const Padding(
          padding:  EdgeInsets.only(right: 12),
          child:  CustomListViewItem(),
        );
      }),
    );
  }
}
