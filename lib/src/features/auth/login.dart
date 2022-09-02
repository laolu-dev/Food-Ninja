import 'package:flutter/material.dart';
import 'package:todo/src/shared/widgets/button.dart';
import '../../shared/resources/resources.dart';
import '../../shared/widgets/text.dart';
import '../../shared/widgets/textfield.dart';

class Login extends StatefulWidget {
  static const String id = '/login';
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailControl = TextEditingController();
  final passwordControl = TextEditingController();
  final formKey = GlobalKey<FormState>();

  social(String image, Function()? action, String name) {
    return TextButton.icon(
      onPressed: action,
      icon: Image.asset(image),
      label: AppText(
        text: name,
        fontSize: 14,
        textColor: Res.color.title,
      ),
      style: TextButton.styleFrom(
        minimumSize: const Size(152, 57),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: const BorderSide(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    AppText(
                      text: 'Login To Your Account',
                      fontSize: 20,
                      textColor: Res.color.title,
                    ),
                    const SizedBox(height: 40),
                    AppTextField(
                      hint: 'Email',
                      controller: emailControl,
                      validator: (email) {
                        return null;
                      },
                    ),
                    const SizedBox(height: 12),
                    AppTextField(
                      hint: 'Password',
                      isPassword: true,
                      controller: passwordControl,
                      validator: (password) {
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    AppText(
                      text: 'Or Continue With',
                      fontSize: 12,
                      textColor: Res.color.title,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        social(Res.image.facebook, () => null, 'Facebook'),
                        social(Res.image.google, () => null, 'Google')
                      ],
                    ),
                    const SizedBox(height: 20),
                    InkWell(
                      onTap: () {},
                      child: AppText(
                        text: 'Forgot Your Password?',
                        fontSize: 12,
                        textColor: Res.color.primary,
                      ),
                    ),
                    const SizedBox(height: 36),
                    Button(
                      buttonName: 'Login',
                      fontSize: 16,
                      hPadding: 48,
                      onTap: () {
                        if (formKey.currentState!.validate()) ;
                      },
                    )
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
