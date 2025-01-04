
import 'package:bookly_app/Features/Home/presentation/views/widgets/Custom_AppBar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/Featured_Books_List_View.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Newest_Books_List_View.dart';
import 'Newest_Books_Item.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics:  BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: CustomAppBar()),
              FeaturedBooksListView(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Newset Books',
                  style:TextStyle( fontSize: 20, fontWeight: FontWeight.w600)
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: NewestBooksListView()
          ),
        ),
      ],
    );
  }
}
