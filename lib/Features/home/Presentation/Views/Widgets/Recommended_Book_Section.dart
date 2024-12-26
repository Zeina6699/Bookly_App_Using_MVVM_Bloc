import 'package:bookly_app/Features/home/Presentation/Views/Widgets/Recommended_BooksListView.dart';
import 'package:flutter/widgets.dart';

class RecommendedBooksSection extends StatelessWidget {
  const RecommendedBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
            Align(
              alignment:Alignment.centerLeft,
              child: Text("You can also like",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600))),
            SizedBox(height:20),
            RecommendedListView(),
      ],
    );
  }
}