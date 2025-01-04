
import 'package:bookly_app/Features/home/presentation/manger/newest_books_cubit/newset_books_cubit.dart';
import 'package:bookly_app/core/widgets/Custom_Circular_Indecator.dart';
import 'package:bookly_app/core/widgets/Custom_Error_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Newest_Books_Item.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: NewestBooksItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is NewsetBooksFailure) {
          return CustomErrorWidget (errorMessage: state.errMessage);
        } else {
          return const CustomCircularIndecator();
        }
      },
    );
  }
}
