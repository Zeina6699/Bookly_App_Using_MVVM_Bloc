import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/BooksListViewItem.dart';
import 'package:bookly_app/Features/Search/Presentation/Views/widgets/Custom_Search_Text_Field.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          SafeArea(child: CustomSearchTextField()),
          SizedBox(height: 20,),
          Align(
              alignment: Alignment.centerLeft,
              child: Text("Search Result",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700))),
          SizedBox(
            height: 20,
          ),
          Expanded(child: SearchResultListView())
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
       // shrinkWrap: true,
        //  physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
            //child: Bestsellerlistviewitem(
            child: Text("data"), 
          
          );
        });
  }
}
