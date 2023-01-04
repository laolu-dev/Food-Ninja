import 'package:flutter/material.dart';

import 'package:todo/src/shared/resources/resources.dart';
import 'package:todo/src/shared/widgets/button.dart';
import 'package:todo/src/shared/widgets/text.dart';

import 'photo_upload.dart';

class PaymentInfo extends StatefulWidget {
  static const String id = '/payment_info';
  const PaymentInfo({super.key});

  @override
  State<PaymentInfo> createState() => _PaymentInfoState();
}

class _PaymentInfoState extends State<PaymentInfo> {
  Widget paymentContainer(String method, Function()? pay) {
    return Container(
      width: MediaQuery.of(context).size.height,
      height: 73,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          border: Border.all(color: const Color.fromARGB(7, 0, 0, 0))),
      child: MaterialButton(
        
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
        splashColor: Res.color.primary.withOpacity(.2),
        onPressed: pay,
        child: Image.asset(method),
      ),
    );
  }

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
                    fit: BoxFit.cover),
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
                  text: 'Payment Method',
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
                paymentContainer(Res.image.paypal, () {}),
                  const SizedBox(height: 20),
                paymentContainer(Res.image.visa, () {}),
                  const SizedBox(height: 20),
                paymentContainer(Res.image.payoneer, () {}),
                const SizedBox(height: 110),
                Align(
                    child: Button(
                  buttonName: 'Next',
                  fontSize: 16,
                  hPadding: 60,
                  onTap: () => Navigator.pushNamed(context, UploadImage.id),
                )),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}

