import 'package:flutter/material.dart';
import 'package:medecin_app/pages/homePage.dart';
import 'package:medecin_app/pages/loginPage.dart';
import 'package:medecin_app/pages/logoPage.dart';
import 'package:medecin_app/pages/porductsPage.dart';
import 'package:medecin_app/pages/registerPage.dart';
import 'package:medecin_app/providers/provider.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MedecinApp());
}
class MedecinApp extends StatelessWidget {
  const MedecinApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes:{
      RegisterPage.id:(context) => RegisterPage(),
      LogInPage.id:(context) => LogInPage(),
      LogoPage.id:(context) => LogoPage(),
      ProductsPage.id:(context) => ProductsPage(),
      HomePage.id:(context) => HomePage(),
    } ,initialRoute://show your working screen here
     ,);
  }
}