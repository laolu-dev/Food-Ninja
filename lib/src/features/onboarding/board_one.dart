import 'package:flutter/material.dart';
import '../../../routes.dart';
import 'board_two.dart';
import '../../shared/resources/resources.dart';
import '../../shared/widgets/button.dart';
import '../../shared/widgets/text.dart';

class BoardOne extends StatelessWidget {
  static const String id = '/boardone';
  const BoardOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(Res.image.boardOne),
            const SizedBox(height: 30),
            AppText(
              text: 'Find your Comfort\nFood here',
              fontSize: 22,
              textColor: Res.color.title,
            ),
            const SizedBox(height: 20),
            AppText(
              text:
                  'Here You Can find a Chef or a dish for every\ntaste and Color. Enjoy!',
              fontSize: 12,
              textColor: Res.color.subTitle,
            ),
            const SizedBox(height: 42),
            Button(
              buttonName: 'Next',
              fontSize: 16,
              hPadding: 60,
              onTap: () => Navigator.pushNamed(context, BoardTwo.id),
            )
          ],
        ),
      ),
    );
  }
}
