import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/Custom_ListViewItem.dart';
import 'package:bookly_app/Features/home/presentation/Views/Widgets/RatingBookly.dart';
import 'package:bookly_app/constants.dart';
import 'package:go_router/go_router.dart';

import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class Bestsellerlistviewitem extends StatelessWidget {
  const Bestsellerlistviewitem({super.key,required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/details');
      },
      child: SizedBox(
          height: 145,
          child: Row(children: [
            CustomListViewItem(imageURL: bookModel.volumeInfo.imageLinks.thumbnail)
         /*   AspectRatio(
              aspectRatio: 1 / 1.6,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.red,
                    image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/test.png"))),
              ),
            ),*/
            ,const SizedBox(
              width: 30,
            ),
           Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      maxLines: 2,
                      bookModel.volumeInfo.title!,
                      overflow: TextOverflow.ellipsis,
                     // "Harry Potter and the \nGoblet of Fire", //minLines: 2,//overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontSize: 23,
                          fontFamily: kGtSectraFine,
                          fontWeight: FontWeight.bold),
                    ),
                const    SizedBox(height: 8),
                  Text(
                  bookModel.volumeInfo.authors![0],
                     // "J.K Rowling",
                      style: TextStyle(fontSize: 15),
                    ),
               const     SizedBox(height: 5),
                 Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                          "Free",
                          //  "19.99 €",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          RatingBook(
                            rating: bookModel.volumeInfo.averageRating??0,
                            count: bookModel.volumeInfo.ratingsCount??0,
                          )
                        ])
                  ]),
            )
          ])),
    );
  }
}
