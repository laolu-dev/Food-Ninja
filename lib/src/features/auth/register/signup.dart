import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:todo/src/shared/resources/resources.dart';
import 'package:todo/src/shared/widgets/button.dart';
import 'package:todo/src/shared/widgets/text.dart';
import 'package:todo/src/shared/widgets/textfield.dart';

import 'login.dart';
import 'user_info.dart';

final checkProvider = StateProvider<bool>((ref) => false);
final checkTwoProvider = StateProvider<bool>((ref) => false);

class Signup extends ConsumerStatefulWidget {
  static const String id = '/signup';
  const Signup({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignupState();
}

class _SignupState extends ConsumerState<Signup> {
  @override
  Widget build(BuildContext context) {
    final tick = ref.watch(checkProvider.state);
    final tickTwo = ref.watch(checkTwoProvider.state);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .4,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Res.image.background),
                    alignment: Alignment.topCenter,
                    fit: BoxFit.cover),
              ),
              child: Image.asset(Res.image.logo,
                  filterQuality: FilterQuality.high),
            ),
            AppText(
              text: 'Sign Up For Free',
              fontSize: 20,
              textColor: Res.color.title,
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Form(
                child: Column(
                  children: [
                    SignupField(
                      image: Res.image.profile,
                      hint: 'Username',
                    ),
                    const SizedBox(height: 12),
                    SignupField(
                      image: Res.image.message,
                      hint: 'Email',
                    ),
                    const SizedBox(height: 12),
                    SignupField(
                      image: Res.image.lock,
                      hint: 'Password',
                      isPassword: true,
                    ),
                    const SizedBox(height: 19),
                    Row(
                      children: [
                        Checkbox(
                          value: tick.state,
                          onChanged: (value) {
                            tick.state = value!;
                          },
                          shape: const CircleBorder(),
                          activeColor: Res.color.primaryTwo,
                        ),
                        AppText(
                          text: 'Keep Me Signed In',
                          fontSize: 12,
                          textColor: Res.color.subTitle,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: tickTwo.state,
                          onChanged: (value) {
                            tickTwo.state = value!;
                          },
                          shape: const CircleBorder(),
                          activeColor: Res.color.primaryTwo,
                        ),
                        AppText(
                          text: 'Email Me About Special Pricing',
                          fontSize: 12,
                          textColor: Res.color.subTitle,
                        )
                      ],
                    ),
                    const SizedBox(height: 44),
                    Button(
                      buttonName: 'Create Account',
                      fontSize: 16,
                      hPadding: 27,
                      onTap: () => Navigator.pushNamed(context, UserInfo.id),
                    ),
                    const SizedBox(height: 20),
                    InkWell(
                      onTap: () => Navigator.pushNamed(context, Login.id),
                      child: AppText(
                        text: 'already have an account?',
                        fontSize: 12,
                        textColor: Res.color.primary,
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
