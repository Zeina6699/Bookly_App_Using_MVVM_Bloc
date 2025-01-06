

import 'package:bookly_app/Features/Home/Presentation/Manager/recommended_books_cubit/Recommended_Books_Cubit.dart';
import 'package:bookly_app/Features/Home/data/models/bookModel/book_model.dart';
import 'package:bookly_app/Features/Home/presentation/views/Widgets/Book_Details_List_View_Body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<RecommendedBooksCubit>(context).fetchRecommendedBooks(
        category: widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BookDetailsListViewBody(bookModel: widget.bookModel)
      ),
    );
  }
}
