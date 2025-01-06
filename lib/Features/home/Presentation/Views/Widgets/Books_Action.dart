import 'package:bookly_app/Features/Home/data/models/bookModel/book_model.dart';
import 'package:bookly_app/core/Utils/methods/launch_url.dart';
import 'package:bookly_app/core/widgets/Custom_Button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const  EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
         const Expanded(
              child: CustomButton(
               
                  backgroundColor: Colors.white,
                  textColor: Colors.black,
                  borderRadius:BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomLeft: Radius.circular(16)),
                  title: "19.99 €")),
          Expanded(
              child: CustomButton(
                onPressed: () {
                  launchCustomUrl(context, bookModel.volumeInfo!.previewLink!);
                  
                 /* Uri uri= Uri.parse(bookModel.volumeInfo!.previewLink!);
                    //bookModel.volumeInfo.previewLink!);
                   if (await canLaunchUrl(uri)){
                   await launchUrl(uri);
                   }*/
           },
            backgroundColor: Color(0xffEF8262),
            textColor: Colors.white,
            title: getText(bookModel),
            //"Free Preview",
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(12)),
          ))
        ],
      ),
    );
  }
  
 String getText(BookModel bookModel) {
    if(bookModel.volumeInfo.infoLink==null){return 'Not Available';}
    else{return 'Preview';}
  }
}
