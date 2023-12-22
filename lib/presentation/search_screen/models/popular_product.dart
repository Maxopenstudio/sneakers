class PopularProduct {
  final int productId;
  final String thumb;
  final String name;
  final int quantity;
  final String status;
  final String stockStatus;
  final double priceExcludingTax;
  final String priceExcludingTaxFormatted;
  final double price;
  final String priceFormatted;
  final double special;
  final String specialFormatted;
  final double specialExcludingTax;
  final String specialExcludingTaxFormatted;
  final List<dynamic> discounts; // Change the type if you know the actual type
  final int rating;
  final String description;

  PopularProduct({
    required this.productId,
    required this.thumb,
    required this.name,
    required this.quantity,
    required this.status,
    required this.stockStatus,
    required this.priceExcludingTax,
    required this.priceExcludingTaxFormatted,
    required this.price,
    required this.priceFormatted,
    required this.special,
    required this.specialFormatted,
    required this.specialExcludingTax,
    required this.specialExcludingTaxFormatted,
    required this.discounts,
    required this.rating,
    required this.description,
  });

  factory PopularProduct.fromJson(Map<String, dynamic> json) {
    return PopularProduct(
      productId: json['product_id'],
      thumb: json['thumb'],
      name: json['name'],
      quantity: json['quantity'],
      status: json['status'],
      stockStatus: json['stock_status'],
      priceExcludingTax: json['price_excluding_tax'].toDouble(),
      priceExcludingTaxFormatted: json['price_excluding_tax_formated'],
      price: json['price'].toDouble(),
      priceFormatted: json['price_formated'],
      special: json['special'].toDouble(),
      specialFormatted: json['special_formated'],
      specialExcludingTax: json['special_excluding_tax'].toDouble(),
      specialExcludingTaxFormatted: json['special_excluding_tax_formated'],
      discounts: List<dynamic>.from(json['discounts']),
      rating: json['rating'],
      description: json['description'],
    );
  }
}