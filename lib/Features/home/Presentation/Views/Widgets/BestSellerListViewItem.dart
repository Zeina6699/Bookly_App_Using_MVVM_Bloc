import 'package:bookly_app/Constants.dart';
import 'package:bookly_app/Features/home/Presentation/Views/Widgets/RatingBookly.dart';
import 'package:flutter/material.dart';

class Bestsellerlistviewitem extends StatelessWidget {
  const Bestsellerlistviewitem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:150,
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

        , const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Harry Potter and the \nGoblet of Fire",//minLines: 2,//overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 23,fontFamily: KGtSectraFine,fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text("J.K Rowling",style: TextStyle(fontSize: 15),),
               SizedBox(height:5),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
               Text("19.99 ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              
              RatingBook()
          
                ])]),
        )])
        
  );}}
 