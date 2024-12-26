import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: BuildOutlinedInputBorder(),
        focusedBorder: BuildOutlinedInputBorder(),

        hintText: "Search",
        suffixIcon: Opacity(opacity:.7,child: IconButton(onPressed:(){},  icon:const Icon(FontAwesomeIcons.magnifyingGlass,size: 16,)))
      ),

    );
  }

  OutlineInputBorder BuildOutlinedInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.white)
      );
  }
}
class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}