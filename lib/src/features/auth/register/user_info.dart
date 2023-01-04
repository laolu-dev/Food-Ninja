import 'package:flutter/material.dart';

import 'package:todo/src/shared/resources/resources.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo/src/shared/widgets/button.dart';
import 'package:todo/src/shared/widgets/text.dart';
import 'package:todo/src/shared/widgets/textfield.dart';

import 'payment_method.dart';

class UserInfo extends ConsumerWidget {
  static const String id = '/user_info';
  const UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fName = TextEditingController();
    final lName = TextEditingController();
    final phone = TextEditingController();
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
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
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 45),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AppBackButton(),
                    const SizedBox(height: 20),
                    AppText(
                      text: 'Fill in your bio to get\nstarted',
                      fontSize: 25,
                      textColor: Res.color.title,
                      align: TextAlign.start,
                    ),
                    const SizedBox(height: 20),
                    AppText(
                      text: 'This data wil be displayed in your'
                          ' account\nprofile for security ',
                      fontSize: 12,
                      textColor: Res.color.subTitle,
                      align: TextAlign.start,
                    ),
                    const SizedBox(height: 20),
                    AppTextField(
                      hint: 'First Name',
                      controller: fName,
                    ),
                    const SizedBox(height: 12),
                    AppTextField(
                      hint: 'Last Name',
                      controller: lName,
                    ),
                    const SizedBox(height: 12),
                    AppTextField(
                      hint: 'Mobile Number',
                      keyboardType: TextInputType.phone,
                      controller: phone,
                    ),
                    const SizedBox(height: 200),
                    Align(
                        child: Button(
                      buttonName: 'Next',
                      fontSize: 16,
                      hPadding: 60,
                      onTap: () => Navigator.pushNamed(context, PaymentInfo.id),
                    )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
