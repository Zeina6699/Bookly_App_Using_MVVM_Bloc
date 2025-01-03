import 'package:bookly_app/Core/Utils/Custom_Circular_Indecator.dart';
import 'package:bookly_app/Core/Utils/Custom_Error_Widget.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/Custom_ListViewItem.dart';
import 'package:bookly_app/Features/home/presentation/Manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class CustomBooksListView extends StatelessWidget {
  const CustomBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {


       if (state is FeaturedBooksSuccess) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * .38,
    child: ListView.builder(
      itemCount: state.books.length,
      physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: CustomListViewItem(imageURL:state.books[index].volumeInfo.imageLinks?.thumbnail??''),
          );
        }
  ));}

        


      
else if(state is FeaturedBooksFailure){
return CustomErrorWidget(errorMessage: state.errMessage);
}

      
  else{return const CircularLoadingIndecator();
    } 
  });}}