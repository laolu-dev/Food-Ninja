import 'package:flutter/material.dart';
import 'package:todo/src/features/auth/signup.dart';
import '../../shared/resources/resources.dart';
import '../../shared/widgets/button.dart';
import '../../shared/widgets/text.dart';

class BoardTwo extends StatelessWidget {
  static const String id = '/boardtwo';
  const BoardTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(Res.image.boardTwo),
            const SizedBox(height: 60),
            AppText(
              text: 'Food Ninja is Where Your\nComfort Food Lives',
              fontSize: 22,
              textColor: Res.color.title,
            ),
            const SizedBox(height: 20),
            AppText(
              text: 'Enjoy a fast and smooth food delivery at\nyour doorstep',
              fontSize: 12,
              textColor: Res.color.subTitle,
            ),
          
          ],
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.fromLTRB(109, 42, 109, 57),
        child: Button(
          buttonName: 'Next',
          fontSize: 16,
          hPadding: 60,
          onTap: () => Navigator.pushNamed(context, Signup.id),
        ),
      ),
    );
  }
}
