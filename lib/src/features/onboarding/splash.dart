import 'dart:async';
import 'package:flutter/material.dart';
import 'board_one.dart';
import '../../shared/resources/resources.dart';

class Splash extends StatefulWidget {
  static const String id = '/';
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(milliseconds: 3000),
      () => Navigator.pushReplacementNamed(context, BoardOne.id),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Res.image.background),
              alignment: Alignment.topCenter,
              fit: BoxFit.fitWidth,
              opacity: .4),
        ),
        child: Center(
          child: Image.asset(Res.image.logo, filterQuality: FilterQuality.high),
        ),
      ),
    );
  }
}
