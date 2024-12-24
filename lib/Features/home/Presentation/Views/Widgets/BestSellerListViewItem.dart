import 'package:bookly_app/Constants.dart';
import 'package:flutter/material.dart';

class Bestsellerlistviewitem extends StatelessWidget {
  const Bestsellerlistviewitem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:125,
      child: Row(
        children: [
          AspectRatio(
          aspectRatio: 1/1.6,
          child: Container(
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Colors.red,
              image:const DecorationImage(
                fit:BoxFit.fill,
                image:AssetImage("assets/images/test.png"))
            ),
          ),
        ),
        const SizedBox(width: 30,)

        , const Column(
          children: [
            Text("Harry Potter  and the Goblet of Fire",maxLines: 2,//overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 20,fontFamily: KGtSectraFone),
            ),


          ],

        )
        ],
      ),
    );
  }
}