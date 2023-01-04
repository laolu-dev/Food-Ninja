import 'package:flutter/material.dart';
import 'package:todo/src/shared/resources/resources.dart';
import 'package:todo/src/shared/widgets/button.dart';
import 'package:todo/src/shared/widgets/text.dart';

class ForgotPassword extends StatelessWidget {
  static const String id = '/forgot_password';
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Widget resetMethod(String icon, String title, String value) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.all(0),
          minLeadingWidth: 0,
          leading: Image.asset(icon),
          title: AppText(
            text: title,
            fontSize: 16,
            textColor: Res.color.subTitle,
          ),
          subtitle: AppText(
            text: '**** **** $value',
            fontSize: 16,
            textColor: Res.color.title,
          ),
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .35,
              decoration: BoxDecoration(
                image: DecorationImage(
                  opacity: .1,
                  image: AssetImage(Res.image.backgroundTwo),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 90),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppBackButton(),
                const SizedBox(height: 20),
                AppText(
                  text: 'Forgot password?',
                  fontSize: 25,
                  textColor: Res.color.title,
                  align: TextAlign.start,
                ),
                const SizedBox(height: 20),
                AppText(
                  text:
                      'Select which contact details should we\nuse to reset your password',
                  fontSize: 12,
                  textColor: Res.color.subTitle,
                  align: TextAlign.start,
                ),
                const SizedBox(height: 20),
                resetMethod(Res.image.sms, 'Via sms:', ''),
                const SizedBox(height: 20),
                resetMethod(Res.image.email, 'Via sms:', ''),
                const SizedBox(height: 90),
                Align(
                  child: Button(
                    buttonName: 'Next',
                    fontSize: 16,
                    hPadding: 60,
                    onTap: () {
                      // Navigator.pushNamed(context, Location.id);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
