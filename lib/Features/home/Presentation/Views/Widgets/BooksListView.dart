import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/BooksListViewItem.dart';
import 'package:flutter/material.dart';

class BestSelllerListView extends StatelessWidget {
  const BestSelllerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
            child: Bestsellerlistviewitem(),
          );
        });
  }
}
