import 'package:bookly_app/Features/Home/Presentation/views/widgets/Recommended_Books_List_View.dart';
import 'package:flutter/widgets.dart';

class RecommendedBooksSection extends StatelessWidget {
  const RecommendedBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Text("You can also like",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600))),
        SizedBox(height: 20),
        RecommendedBooksListView()
      ],
    );
  }
}
