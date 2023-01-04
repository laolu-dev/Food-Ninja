import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:todo/src/shared/resources/resources.dart';
import 'package:todo/src/shared/widgets/button.dart';
import 'package:todo/src/shared/widgets/text.dart';

import 'profile_success.dart';

class Location extends ConsumerStatefulWidget {
  static const String id = '/location';
  const Location({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LocationState();
}

class _LocationState extends ConsumerState<Location> {
  @override
  Widget build(BuildContext context) {
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
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 45),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppBackButton(),
                const SizedBox(height: 20),
                AppText(
                  text: 'Set Your Location',
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
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: Res.color.white,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 50,
                        offset: Offset(12, 26),
                        color:Color.fromRGBO(90, 108, 234, .07)
                      )
                    ]
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(Res.image.pin),
                          const SizedBox(width: 14),
                          AppText(
                            text: 'Your Location',
                            fontSize: 15,
                            textColor: Res.color.title,
                          )
                        ],
                      ),
                      const SizedBox(height: 27),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 116, vertical: 21),
                            backgroundColor:
                                const Color.fromRGBO(90, 108, 234, 0.07)),
                        child: AppText(
                          text: 'Set Location',
                          fontSize: 14,
                          textColor: Res.color.title,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 220),
                Align(
                  child: Button(
                    buttonName: 'Next',
                    fontSize: 16,
                    hPadding: 60,
                    onTap: () => Navigator.pushNamed(context, ProfileSuccess.id),
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
