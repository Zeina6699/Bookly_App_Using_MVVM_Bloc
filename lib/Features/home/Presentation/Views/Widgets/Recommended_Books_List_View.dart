
import 'package:bookly_app/Features/Home/presentation/views/widgets/Custom_Book_Image.dart';
import 'package:bookly_app/Features/home/presentation/manger/smila_books_cubit/Recommended_Books_Cubit.dart';
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
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: CustomBookImage(
                      imageUrl:
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png',
                    ),
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
