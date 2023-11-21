import 'package:flutter/material.dart';
import 'package:medecin_app/models/medicine.dart';

class ProductsPage extends StatefulWidget {
  ProductsPage({super.key});
  static String id = "ProductsPage";

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  final String scientificName = 'scientificName';

  final String commercialName = 'commercialName';

  final String category = 'category';

  final String factory = 'factory';

  final int quantity = 5000;

  final int price = 25000;

  final DateTime expirationDate = DateTime(2023, 02, 05);

  bool favourite = false;

  int wantedQuantity = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: IconButton(
        style: IconButton.styleFrom(
          backgroundColor: Colors.blue,
          fixedSize: Size.fromRadius(15),
        ),
        icon: Icon(Icons.add_shopping_cart_rounded),
        color: Colors.white,
        onPressed: () {},
      ),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_sharp),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.favorite_outline_sharp,
              color: Colors.red,
            ),
            onPressed: () {},
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
      backgroundColor: Color(0xFFECE6E6),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MedicineCard(upper: scientificName, lower: commercialName),
            Row(
              children: [
                Expanded(
                  child: MedicineCard(
                    upper: 'Category',
                    lower: category,
                  ),
                ),
                Expanded(
                    child: MedicineCard(
                  upper: 'factory',
                  lower: factory,
                ))
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: MedicineCard(
                    upper: 'price',
                    lower: price.toString(),
                  ),
                ),
                Expanded(
                    child: MedicineCard(
                  upper: 'quantity',
                  lower: quantity.toString(),
                ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 230,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        setState(() {
                          wantedQuantity = int.parse(value);
                        });
                      },
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 13),
                        hintText: 'Enter the '
                            'quantity you want',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    wantedQuantity.toString(),
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Kanit',
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo[900]),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MedicineCard extends StatelessWidget {
  const MedicineCard({
    super.key,
    required this.upper,
    required this.lower,
  });

  final String upper;
  final String lower;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Text(
                upper,
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Merriweather',
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w800),
              ),
              Text(lower,
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Kanit',
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo[900])),
            ],
          ),
        ),
      ),
    );
  }
}
