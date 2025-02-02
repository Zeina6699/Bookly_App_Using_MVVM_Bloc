import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backgroundColor,
      required this.textColor,
      this.borderRadius,
      required this.title, this.onPressed});

  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                  borderRadius: borderRadius ?? BorderRadius.circular(12))),
          onPressed: onPressed,
          child: Text(title,
              style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w900,
                  fontSize: 20))),
    );
  }
}
