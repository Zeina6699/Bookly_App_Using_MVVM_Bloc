import 'package:bookly_app/Constants.dart';
import 'package:bookly_app/Core/Utils/Custom_Button.dart';
import 'package:bookly_app/Features/home/Presentation/Views/Widgets/Books_Action.dart';
import 'package:bookly_app/Features/home/Presentation/Views/Widgets/Custom_ListViewItem.dart';
import 'package:bookly_app/Features/home/Presentation/Views/Widgets/RatingBookly.dart';
import 'package:bookly_app/Features/home/Presentation/Views/Widgets/Similar_BooksListView.dart';
import 'package:flutter/material.dart';
import 'Custom_BookDetailsAppBar,dart';


class BookDetailsListViewBody extends StatelessWidget {
  const BookDetailsListViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child:Padding(
          padding: const EdgeInsets.symmetric(horizontal:10),
          child:  Column(
            children: [
              SafeArea(child: CustomBookDetailsAppBar()),
              SizedBox(
                width:MediaQuery.of(context).size.width*.46,
                child: const CustomListViewItem()),
              const  SizedBox(height: 37),
              const  Text("The Jungle Book",maxLines:1,style: TextStyle(fontFamily:KGtSectraFine ,fontSize: 30,fontWeight: FontWeight.bold)),
              const  SizedBox(height:2),
              const  Opacity(opacity: .4,child: Text("Rudyard Kipling",style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 18,fontWeight: FontWeight.w600),),
                ),
             const  SizedBox(height: 11),
             const  RatingBook(mainAxis: MainAxisAlignment.center),
             const  SizedBox(height:30),
             const Padding(padding: EdgeInsets.symmetric(horizontal: 20),child: BooksAction()),
             const SizedBox(height:10),
             const  Align(alignment:Alignment.centerLeft,child: Text("You can also like",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600))),
             const SizedBox(height:20),
             const SimilarBookslistview()
            ])),
)]);
  }}
class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}