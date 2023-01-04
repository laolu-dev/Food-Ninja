import 'package:flutter/material.dart';
import 'package:todo/src/features/home/main_page.dart';
import 'package:todo/src/shared/resources/resources.dart';
import 'package:todo/src/shared/widgets/button.dart';
import 'package:todo/src/shared/widgets/text.dart';

class ProfileSuccess extends StatelessWidget {
  static const String id = '/profile_success';
  const ProfileSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .5,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Res.image.background),
                    alignment: Alignment.topCenter,
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Res.image.congrats),
                const SizedBox(height: 33),
                AppText(
                  text: 'Congrats',
                  fontSize: 30,
                  textColor: Res.color.primaryTwo,
                ),
                const SizedBox(height: 12),
                AppText(
                  text: 'Your Profile is Ready To Use',
                  fontSize: 23,
                  textColor: Res.color.title,
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          Positioned(
            left: 125,
            bottom: 60,
            child: Button(
              buttonName: 'Try Order',
              fontSize: 16,
              hPadding: 42,
              onTap: () => Navigator.pushNamed(context, MainPage.id),
            ),
          )
        ],
      ),
    );
  }
}
