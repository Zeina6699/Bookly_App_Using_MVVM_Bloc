import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key,  required this.rating, required this.count, required this.mainAxis});
final MainAxisAlignment mainAxis;
  final int rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return  Row(
       children: [
     const Icon(FontAwesomeIcons.solidStar,
          size: 17, color: Color.fromARGB(255, 246, 234, 121)),
   const   SizedBox(width: 11),
      Text(
       rating.toString(),
      //  "4,8",
        style:const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
     const SizedBox(width: 5),
      Opacity(
          opacity: .4,
          child: Text(
            count.toString(),
            //"(265)",
              style:const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)))
    ]);
  }
}
