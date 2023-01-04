import 'package:flutter/material.dart';

import 'package:todo/src/features/auth/reset_password/forgot_password.dart';
import 'package:todo/src/features/auth/reset_password/success.dart';

import 'src/features/auth/register/location.dart';
import 'src/features/auth/register/login.dart';
import 'src/features/auth/register/payment_method.dart';
import 'src/features/auth/register/photo_upload.dart';
import 'src/features/auth/register/profile_success.dart';
import 'src/features/auth/register/signup.dart';
import 'src/features/auth/register/user_info.dart';
import 'src/features/home/main_page.dart';
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
    case MainPage.id:
      return MaterialPageRoute(builder: (_) => const MainPage());
    case Location.id:
      return MaterialPageRoute(builder: (_) => const Location());
    case ProfileSuccess.id:
      return MaterialPageRoute(builder: (_) => const ProfileSuccess());
    case ResetPasswordSuccess.id:
      return MaterialPageRoute(builder: (_) => const ResetPasswordSuccess());
    case ForgotPassword.id:
      return MaterialPageRoute(builder: (_) => const ForgotPassword());
  }

  return null;
}
