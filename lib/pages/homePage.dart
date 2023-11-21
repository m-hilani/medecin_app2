import 'package:flutter/material.dart';
import 'package:medecin_app/requests/get_medicines.dart';
import '../models/medicine.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = "HomePage";

  static Medicine medicine = Medicine(
      id: 01,
      scientificName: 'scientificName',
      commercialName: 'commercialName',
      category: 'category',
      factory: 'factory',
      quantity: 10,
      price: 1.1,
      expirationDate: DateTime(2015, 13, 30));

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
