import 'package:bookly_app/Constants.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/Custom_Book_Image.dart';
import 'package:bookly_app/Features/Home/data/models/bookModel/book_model.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/widgets/Custom_Book_Details_AppBar.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/widgets/book_rating.dart';
import 'package:flutter/widgets.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      const SafeArea(child: CustomBookDetailsAppBar()),
        SizedBox(
            width: MediaQuery.of(context).size.width * .46,
            child:  CustomBookImage(
              imageUrl:  
            book.volumeInfo.imageLinks?.thumbnail??''
               // 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png'))  
         )
          ),  const SizedBox(height: 37),
        Text(
           book.volumeInfo.title!,
          //"The Jungle Book",
            maxLines: 1,
            textAlign: TextAlign.center,
            style:const TextStyle(
                fontFamily: kGtSectraFine,
                fontSize: 30,
                fontWeight: FontWeight.bold)),
        const SizedBox(height: 2),
         Opacity(
          opacity: .4,
          child: Text(
           book.volumeInfo.authors?[0]??'UnKnown',
            //"Rudyard Kipling",
            style:const TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 11),
       Padding(
          padding:  EdgeInsets.only(left:150),
          child:BookRating(
            rating:book.volumeInfo.averageRating??2,
            //5,
            count:book.volumeInfo.ratingsCount??100,
            //240,
            mainAxis: MainAxisAlignment.center
           ),
        ),
      ],
    );
  }
}
