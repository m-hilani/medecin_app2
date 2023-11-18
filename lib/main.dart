import 'package:flutter/material.dart';
import 'package:medecin_app/pages/homePage.dart';
import 'package:medecin_app/pages/loginPage.dart';
import 'package:medecin_app/pages/logoPage.dart';
import 'package:medecin_app/pages/porductsPage.dart';
import 'package:medecin_app/pages/registerPage.dart';
import 'package:medecin_app/providers/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => dProvider(),
    child: const MedecinApp(),
  ));
}

class MedecinApp extends StatelessWidget {
  const MedecinApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      RegisterPage.id: (context) => const RegisterPage(),
      LogInPage.id: (context) => const LogInPage(),
      LogoPage.id: (context) => const LogoPage(),
      ProductsPage.id: (context) => const ProductsPage(),
      WelcomePage.id: (context) => const WelcomePage(),
    }, initialRoute: WelcomePage.id //show your working screen here
        );
  }
}
