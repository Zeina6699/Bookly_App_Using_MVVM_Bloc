import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingBook extends StatelessWidget {
  const RatingBook({super.key, this.mainAxis = MainAxisAlignment.start});
  final MainAxisAlignment mainAxis;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: mainAxis, children: const [
      Icon(FontAwesomeIcons.solidStar,
          size: 17, color: Color.fromARGB(255, 246, 234, 121)),
      SizedBox(width: 11),
      Text(
        "4,8",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      SizedBox(width: 5),
      Opacity(
          opacity: .4,
          child: Text("(265)",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)))
    ]);
  }
}
