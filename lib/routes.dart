import 'package:flutter/material.dart';
import 'package:todo/src/features/auth/payment_method.dart';
import 'package:todo/src/features/auth/photo_upload.dart';
import 'package:todo/src/features/auth/signup.dart';
import 'src/features/auth/login.dart';
import 'src/features/auth/user_info.dart';
import 'src/features/onboarding/board_one.dart';
import 'src/features/onboarding/board_two.dart';
import 'src/features/onboarding/splash.dart';

Route<dynamic>? appRoutes(RouteSettings settings) {
  switch (settings.name) {
    case Splash.id:
      return MaterialPageRoute(builder: (_) => const Splash());
    case BoardOne.id:
      return MaterialPageRoute(builder: (_) => const BoardOne());
    case BoardTwo.id:
      return MaterialPageRoute(builder: (_) => const BoardTwo());
    case Login.id:
      return MaterialPageRoute(builder: (_) => const Login());
    case Signup.id:
      return MaterialPageRoute(builder: (_) => const Signup());
    case UserInfo.id:
      return MaterialPageRoute(builder: (_) => const UserInfo());
    case PaymentInfo.id:
      return MaterialPageRoute(builder: (_) => const PaymentInfo());
    case UploadImage.id:
      return MaterialPageRoute(builder: (_) => const UploadImage());
  }
  return null;
}
