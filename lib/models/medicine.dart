class Medicine {
  final int id;
  final String scientificName;
  final String commercialName;
  final String category;
  final String factory;
  final int quantity;
  final double price;
  final DateTime expirationDate;
  bool favourite = false;
  Medicine({
    required this.id,
    required this.scientificName,
    required this.commercialName,
    required this.category,
    required this.factory,
    required this.quantity,
    required this.price,
    required this.expirationDate,
  });

  factory Medicine.fromJson(Map<String, dynamic> json) {
    return Medicine(
      category: json['category'],
      commercialName: json['commercialName'],
      expirationDate: DateTime.utc(
          json['expirationDate']['year'],
          [json['expirationDate']['month'], json['expirationDate']['year']]
              as int),
      factory: json['factory'],
      id: json['id'],
      price: json['price'],
      quantity: json['quantity'],
      scientificName: json['scientificName'],
    );
  }
}
