import 'package:bookly_app/Constants.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/Custom_Book_Details_AppBar.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/Custom_Book_Image.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/widgets.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SafeArea(child: CustomBookDetailsAppBar()),
        SizedBox(
            width: MediaQuery.of(context).size.width * .46,
            child: const CustomBookImage(imageUrl: 
            
                'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png'))  
                ,  const SizedBox(height: 37),
        const Text("The Jungle Book",
            maxLines: 1,
            style: TextStyle(
                fontFamily: kGtSectraFine,
                fontSize: 30,
                fontWeight: FontWeight.bold)),
        const SizedBox(height: 2),
        const Opacity(
          opacity: .4,
          child: Text(
            "Rudyard Kipling",
            style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 11),
       const Padding(
          padding: const EdgeInsets.only(left:150),
          child: const BookRating(
            rating:5,
            count:240,
            mainAxis: MainAxisAlignment.center
           ),
        ),
      ],
    );
  }
}
