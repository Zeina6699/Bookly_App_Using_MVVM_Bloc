import 'package:go_router/go_router.dart';
import 'package:bookly_app/Features/Home/Presentation/Manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/Custom_Book_Image.dart';
import 'package:bookly_app/core/Utils/app_router.dart';
import 'package:bookly_app/core/widgets/Custom_Circular_Indecator.dart';
import 'package:bookly_app/core/widgets/Custom_Error_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: GestureDetector(
                         onTap: () { GoRouter.of(context).push('/details',extra:state.books[index]);},
                      child: CustomBookImage(
                        imageUrl:
                            state.books[index].volumeInfo.imageLinks?.thumbnail ??'',
                      ),
                    ));}));}
                  
                
          
        else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errMessage);
        } else {
          return const CustomCircularIndecator();
        }
      });
    
  }
}
