class Order {
  final String orderId;
  final String name;
  final String status;
  final String dateAdded;
  final int products;
  final String total;
  final String currencyCode;
  final String currencyValue;
  final String totalRaw;
  final DateTime timestamp;
  final CurrencyOrder currency;

  Order({
    required this.orderId,
    required this.name,
    required this.status,
    required this.dateAdded,
    required this.products,
    required this.total,
    required this.currencyCode,
    required this.currencyValue,
    required this.totalRaw,
    required this.timestamp,
    required this.currency,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      orderId: json['order_id'],
      name: json['name'],
      status: json['status'],
      dateAdded: json['date_added'],
      products: json['products'],
      total: json['total'],
      currencyCode: json['currency_code'],
      currencyValue: json['currency_value'],
      totalRaw: json['total_raw'],
      timestamp: DateTime.fromMillisecondsSinceEpoch(json['timestamp'] * 1000),
      currency: CurrencyOrder.fromJson(json['currency']),
    );
  }
}

class CurrencyOrder {
  final String currencyId;
  final String symbolLeft;
  final String symbolRight;
  final String decimalPlace;
  final String value;

  CurrencyOrder({
    required this.currencyId,
    required this.symbolLeft,
    required this.symbolRight,
    required this.decimalPlace,
    required this.value,
  });

  factory CurrencyOrder.fromJson(Map<String, dynamic> json) {
    return CurrencyOrder(
      currencyId: json['currency_id'],
      symbolLeft: json['symbol_left'],
      symbolRight: json['symbol_right'],
      decimalPlace: json['decimal_place'],
      value: json['value'],
    );
  }
}

