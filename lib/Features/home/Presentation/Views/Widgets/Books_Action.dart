import 'package:bookly_app/Core/Utils/Custom_Button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
                  backgroundColor: Colors.white,
                  textColor: Colors.black,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomLeft: Radius.circular(16)),
                  title: "19.99 €")),
          Expanded(
              child: CustomButton(
            backgroundColor: Color(0xffEF8262),
            textColor: Colors.white,
            title: "Free Preview",
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(12)),
          ))
        ],
      ),
    );
  }
}
