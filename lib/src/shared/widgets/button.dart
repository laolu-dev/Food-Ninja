import 'package:flutter/material.dart';
import '../resources/resources.dart';

class Button extends StatelessWidget {
  final String buttonName;
  final double fontSize;
  final double hPadding;
  final Function() onTap;
  const Button(
      {Key? key,
      required this.buttonName,
      required this.fontSize,
      required this.hPadding,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Res.color.primary, Res.color.primaryTwo],
          ),
          borderRadius: BorderRadius.circular(15)),
      child: TextButton(
        onPressed: onTap,
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 18, horizontal: hPadding),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          buttonName,
          style: TextStyle(
            color: Res.color.white,
            fontSize: fontSize,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}

class AppBackButton extends StatelessWidget {
  const AppBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      decoration: BoxDecoration(
        color: Res.color.iconBackground,
        borderRadius: BorderRadius.circular(15),
      ),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        height: 45,
        splashColor: Res.color.primary.withOpacity(.2),
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 14),
        onPressed: () => Navigator.pop(context),
        child: Icon(Icons.arrow_back_ios, color: Res.color.iconColor),
      ),
    );
  }
}
