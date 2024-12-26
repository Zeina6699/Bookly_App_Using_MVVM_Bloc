 import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingBook extends StatelessWidget {
    const RatingBook({super.key});
  
    @override
    Widget build(BuildContext context) {
      return const Row(
        children: [
        Icon(FontAwesomeIcons.solidStar,color: Color.fromARGB(255, 246, 234, 121)),
         SizedBox(width:9),
        
        Text("4,8",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
        SizedBox(width:4),
         Text("(265)",style: TextStyle(fontSize: 14,color: Colors.grey),),
        
        ]);
    }
  }
