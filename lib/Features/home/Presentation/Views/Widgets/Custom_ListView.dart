import 'package:bookly_app/Features/home/Presentation/Views/Widgets/Custom_ListViewItem.dart';
import 'package:flutter/material.dart';

class CustomBooksListView extends StatelessWidget {
  const CustomBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.38,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
        return CustomListViewItem();
      }),
    );
  }
}
