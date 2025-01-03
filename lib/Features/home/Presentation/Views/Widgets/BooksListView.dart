import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/Features/home/presentation/Manger/newest_books_cubit/newset_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/Views/Widgets/BooksListViewItem.dart';
import 'package:bookly_app/core/Utils/Custom_Circular_Indecator.dart';
import 'package:bookly_app/core/Utils/Custom_Error_Widget.dart';
import 'package:flutter/material.dart';

class BestSelllerListView extends StatelessWidget {
  const BestSelllerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if(state is NewsetBooksSuccess){
        return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return  Padding(
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                child: Bestsellerlistviewitem(bookModel:state.books[index]),
              );
            });
      }

    
      else if(state is NewsetBooksFailure){
        return CustomErrorWidget(errorMessage: state.errMessage);
      }
      else{return const CircularLoadingIndecator();}
  });
  }
}
