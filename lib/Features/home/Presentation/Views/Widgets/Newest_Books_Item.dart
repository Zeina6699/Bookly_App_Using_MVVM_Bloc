
import 'package:bookly_app/Features/Home/presentation/views/widgets/Custom_Book_Image.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'book_rating.dart';

class NewestBooksItem extends StatelessWidget {
  const NewestBooksItem({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          '/details',
          extra: bookModel,
        );
      },
      child: SizedBox(
        height: 145,
        child: Row(
          children: [
            CustomBookImage(
                imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? ''),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                            fontSize: 23,
                            fontFamily: kGtSectraFine,
                            fontWeight: FontWeight.bold),
   // "Harry Potter and the \nGoblet of Fire", //minLines: 2,//overflow: TextOverflow.ellipsis,

                      ),
                    ),
                  
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    bookModel.volumeInfo.authors![0],
                   maxLines: 1,
                     // "J.K Rowling",
                      style: const TextStyle(fontSize: 15),
                    ),
                  
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                          "Free",
                          //  "19.99 €",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                     
                      BookRating(
                        mainAxis: MainAxisAlignment.center,
                        rating:
                            bookModel.volumeInfo.averageRating?.round() ?? 0,
                        count: bookModel.volumeInfo.ratingsCount ?? 0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
