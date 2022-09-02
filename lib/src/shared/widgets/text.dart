import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final Color textColor;
  final double fontSize;
  final TextAlign? align;
  final String? family;
  const AppText(
      {Key? key,
      required this.text,
      required this.fontSize,
      required this.textColor,
      this.align,
      this.family})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align ?? TextAlign.center,
      style: TextStyle(
        color: textColor,
        fontSize: fontSize,
        fontFamily: family,
      ),
    );
  }
}
