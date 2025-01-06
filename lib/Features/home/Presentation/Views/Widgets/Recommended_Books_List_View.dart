
import 'package:bookly_app/Features/Home/Presentation/Manager/recommended_books_cubit/Recommended_Books_Cubit.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/Custom_Book_Image.dart';
import 'package:bookly_app/core/widgets/Custom_Circular_Indecator.dart';
import 'package:bookly_app/core/widgets/Custom_Error_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class RecommendedBooksListView extends StatelessWidget {
  const RecommendedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecommendedBooksCubit, RecommendedBooksState>(
      builder: (context, state) {
        if (state is RecommendedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .20,
            child: ListView.builder(
              itemCount:state.books.length  ,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 5),
                    child: CustomBookImage(
                      imageUrl:state.books[index].volumeInfo.imageLinks?.thumbnail??''                    ),
                  );
                }),
          );
        } else if (state is RecommendedBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errMessage);
        } else {
          return const CustomCircularIndecator();
        }
      },
    );
  }
}
