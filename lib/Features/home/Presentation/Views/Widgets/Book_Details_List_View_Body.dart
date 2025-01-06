import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/Book_Details_Section.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/Books_Action.dart';
import 'package:bookly_app/Features/Home/data/models/bookModel/book_model.dart';
import 'package:bookly_app/Features/Home/presentation/Views/widgets/Recommended_Books_Section.dart';
import 'package:flutter/material.dart';

class BookDetailsListViewBody extends StatelessWidget {
 const  BookDetailsListViewBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverFillRemaining(
        hasScrollBody: false,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(children: [
              BookDetailsSection(book: bookModel),
              const SizedBox(height: 30),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: BooksAction()),
              const SizedBox(height: 50),
              const RecommendedBooksSection(

              ),
              const SizedBox(height: 20),
            ])),
      )
    ]);
  }
}
