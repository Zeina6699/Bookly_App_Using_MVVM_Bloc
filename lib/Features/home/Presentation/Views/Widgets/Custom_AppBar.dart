import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18, top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("assets/images/Logo.png", height: 25),
          IconButton(
              onPressed: () {GoRouter.of(context).push('/search');},
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 16,))
        ],
      ),
    );
  }
}
