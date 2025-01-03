import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingBook extends StatelessWidget {
  const RatingBook({super.key, this.mainAxis = MainAxisAlignment.start, required this.rating, required this.count});
  final MainAxisAlignment mainAxis;
  final int rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: mainAxis, children: [
      Icon(FontAwesomeIcons.solidStar,
          size: 17, color: Color.fromARGB(255, 246, 234, 121)),
      SizedBox(width: 11),
      Text(
       rating.toString(),
      //  "4,8",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      SizedBox(width: 5),
      Opacity(
          opacity: .4,
          child: Text(
            count.toString(),
            //"(265)",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)))
    ]);
  }
}
