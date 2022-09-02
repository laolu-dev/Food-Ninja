import 'package:flutter/material.dart';

class AppColors {
  final Map<int, Color> _primaryColorShades = {
    50: const Color.fromRGBO(83, 232, 139, .1),
    100: const Color.fromRGBO(83, 232, 139, .2),
    200: const Color.fromRGBO(83, 232, 139, .3),
    300: const Color.fromRGBO(83, 232, 139, .4),
    400: const Color.fromRGBO(83, 232, 139, .5),
    500: const Color.fromRGBO(83, 232, 139, .6),
    600: const Color.fromRGBO(83, 232, 139, .7),
    700: const Color.fromRGBO(83, 232, 139, .8),
    800: const Color.fromRGBO(83, 232, 139, .9),
    900: const Color.fromRGBO(83, 232, 139, 1),
  };

  MaterialColor get appSwatch => MaterialColor(0xFF53E88B, _primaryColorShades);

  Color get primary => const Color.fromRGBO(83, 232, 139, 1);

  Color get primaryTwo => const Color.fromRGBO(21, 190, 119, 1);

  Color get white => const Color.fromRGBO(255, 255, 255, 1);

  Color get iconColor => const Color.fromRGBO(218, 99, 23, 1);

  Color get iconBackground => const Color.fromRGBO(249, 168, 77, .2);

  Color get title => const Color.fromRGBO(9, 5, 28, 1);

  Color get subTitle => const Color.fromRGBO(0, 0, 0, 1);
}
