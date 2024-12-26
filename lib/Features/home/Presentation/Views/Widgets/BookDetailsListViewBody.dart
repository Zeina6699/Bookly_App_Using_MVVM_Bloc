import 'package:bookly_app/Constants.dart';
import 'package:bookly_app/Core/Utils/Custom_Button.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/Book_Details_Section.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/Books_Action.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/Custom_ListViewItem.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/RatingBookly.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/Recommended_Book_Section.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/Recommended_BooksListView.dart';
import 'package:flutter/material.dart';
import 'Custom_BookDetailsAppBar,dart';


class BookDetailsListViewBody extends StatelessWidget {
  const BookDetailsListViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child:Padding(
          padding: EdgeInsets.symmetric(horizontal:10),
          child:  Column(
            children: [
              BookDetailsSection(),
            SizedBox(height:30),
            Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child: BooksAction()),
            SizedBox(height:50),
            RecommendedBooksSection(),
            SizedBox(height:20),
            ])),
)]);
  }}
