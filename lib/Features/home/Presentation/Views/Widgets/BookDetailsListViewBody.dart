import 'package:bookly_app/Constants.dart';
import 'package:bookly_app/Features/home/Presentation/Views/Widgets/Custom_ListViewItem.dart';
import 'package:bookly_app/Features/home/Presentation/Views/Widgets/RatingBookly.dart';
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
            child: CustomListViewItem()),
            SizedBox(height: 37),
            Text("The Jungle Book",style: TextStyle(fontFamily:KGtSectraFine ,fontSize: 30,fontWeight: FontWeight.bold)),
            SizedBox(height: 3),
            Opacity(
              opacity: .7,
              child: Text("Rudyard Kipling",style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 18,fontWeight: FontWeight.w600),),
            ),
            SizedBox(height: 11),
            RatingBook(mainAxis: MainAxisAlignment.center,)

         
        ],
      ),
    );
  }
}
