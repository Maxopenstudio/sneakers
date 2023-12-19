class CartProductModel {
  final String key;
  final String thumb;
  final String name;
  final int points;
  final String productId;
  final String model;
  final List<ProductOption> options;
  final String quantity;
  final bool stock;
  final String reward;
  final String price;
  final String recurring;
  final String total;
  final int priceRaw;
  final int totalRaw;

  CartProductModel({
    required this.key,
    required this.thumb,
    required this.name,
    required this.points,
    required this.productId,
    required this.model,
    required this.options,
    required this.quantity,
    required this.stock,
    required this.reward,
    required this.price,
    required this.recurring,
    required this.total,
    required this.priceRaw,
    required this.totalRaw,
  });

  factory CartProductModel.fromJson(Map<String, dynamic> json) {
    List<dynamic> optionsJson = json['option'];
    List<ProductOption> optionsList = optionsJson.map((option) {
      return ProductOption.fromJson(option);
    }).toList();
    return CartProductModel(
      key: json['key'],
      thumb: json['thumb'],
      name: json['name'],
      points: json['points'],
      productId: json['product_id'],
      model: json['model'],
      options: optionsList,
      quantity: json['quantity'],
      stock: json['stock'],
      reward: json['reward'],
      price: json['price'],
      recurring: json['recurring'],
      total: json['total'],
      priceRaw: json['price_raw'],
      totalRaw: json['total_raw'],
    );
  }
  Map<String, dynamic> toJson() {
    List<Map<String, dynamic>> optionsJsonList = options.map((option) => option.toJson()).toList();

    return {
      'key': key,
      'thumb': thumb,
      'name': name,
      'points': points,
      'product_id': productId,
      'model': model,
      'option': optionsJsonList,
      'quantity': quantity,
      'stock': stock,
      'reward': reward,
      'price': price,
      'recurring': recurring,
      'total': total,
      'price_raw': priceRaw,
      'total_raw': totalRaw,
    };
  }
}

class ProductOption {
  final String name;
  final String value;

  ProductOption({
    required this.name,
    required this.value,
  });

  factory ProductOption.fromJson(Map<String, dynamic> json) {
    return ProductOption(
      name: json['name'],
      value: json['value'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'value': value,
    };
  }
}

class Currency {
  final String currencyId;
  final String symbolLeft;
  final String symbolRight;
  final String decimalPlace;
  final String value;

  Currency({
    required this.currencyId,
    required this.symbolLeft,
    required this.symbolRight,
    required this.decimalPlace,
    required this.value,
  });

  factory Currency.fromJson(Map<String, dynamic> json) {
    return Currency(
      currencyId: json['currency_id'],
      symbolLeft: json['symbol_left'],
      symbolRight: json['symbol_right'],
      decimalPlace: json['decimal_place'],
      value: json['value'],
    );
  }
}

class Cart {
  final String weight;
  final List<CartProductModel> products;
  final List<dynamic> vouchers;
  final dynamic couponStatus;
  final String coupon;
  final dynamic voucherStatus;
  final String voucher;
  final bool rewardStatus;
  final String reward;
  final List<dynamic> totals;
  final String total;
  final int totalRaw;
  final int totalProductCount;
  final int hasShipping;
  final int hasDownload;
  final int hasRecurringProducts;
  final Currency currency;

  Cart({
    required this.weight,
    required this.products,
    required this.vouchers,
    required this.couponStatus,
    required this.coupon,
    required this.voucherStatus,
    required this.voucher,
    required this.rewardStatus,
    required this.reward,
    required this.totals,
    required this.total,
    required this.totalRaw,
    required this.totalProductCount,
    required this.hasShipping,
    required this.hasDownload,
    required this.hasRecurringProducts,
    required this.currency,
  });

  factory Cart.fromJson(Map<String, dynamic> json) {
    return Cart(
      weight: json['weight'],
      products: (json['products'] as List)
          .map((productJson) => CartProductModel.fromJson(productJson))
          .toList(),
      vouchers: json['vouchers'],
      couponStatus: json['coupon_status'],
      coupon: json['coupon'],
      voucherStatus: json['voucher_status'],
      voucher: json['voucher'],
      rewardStatus: json['reward_status'],
      reward: json['reward'],
      totals: json['totals'],
      total: json['total'],
      totalRaw: json['total_raw'],
      totalProductCount: json['total_product_count'],
      hasShipping: json['has_shipping'],
      hasDownload: json['has_download'],
      hasRecurringProducts: json['has_recurring_products'],
      currency: Currency.fromJson(json['currency']),
    );
  }
}