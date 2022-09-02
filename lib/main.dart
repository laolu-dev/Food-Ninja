import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'routes.dart';
import 'src/shared/resources/resources.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    const ProviderScope(
      child: FoodNinja(),
    ),
  );
}

class FoodNinja extends StatelessWidget {
  const FoodNinja({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: appRoutes,
      theme: ThemeData(
          primarySwatch: Res.color.appSwatch,
          primaryColor: Res.color.primaryTwo,
          fontFamily: 'BentonSansBold'),
      debugShowCheckedModeBanner: false,
      title: 'Food Ninja',
    );
  }
}
