class OrderDetail {
  final String orderId;
  final String invoiceNo;
  final String invoicePrefix;
  final String storeId;
  final String storeName;
  final String storeUrl;
  final String customerId;
  final String firstName;
  final String lastName;
  final String telephone;
  final String email;
  final String paymentFirstname;
  final String paymentLastname;
  final String paymentCompany;
  final String paymentAddress1;
  final String paymentAddress2;
  final String paymentPostcode;
  final String paymentCity;
  final String paymentZoneId;
  final String paymentZone;
  final String paymentZoneCode;
  final String paymentCountryId;
  final String paymentCountry;
  final String paymentIsoCode2;
  final String paymentIsoCode3;
  final String paymentAddressFormat;
  final String paymentMethod;
  final String shippingFirstname;
  final String shippingLastname;
  final String shippingCompany;
  final String shippingAddress1;
  final String shippingAddress2;
  final String shippingPostcode;
  final String shippingCity;
  final String shippingZoneId;
  final String shippingZone;
  final String shippingZoneCode;
  final String shippingCountryId;
  final String shippingCountry;
  final String shippingIsoCode2;
  final String shippingIsoCode3;
  final String shippingAddressFormat;
  final String shippingMethod;
  final String comment;
  final String total;
  final String orderStatusId;
  final String languageId;
  final String currencyId;
  final String currencyCode;
  final String currencyValue;
  final String dateModified;
  final String dateAdded;
  final String ip;
  final String paymentAddress;
  final String shippingAddress;
  final List<Product> products;
  final List<dynamic> vouchers;
  final List<Total> totals;
  final List<History> histories;
  final DateTime timestamp;
  final CurrencyOrderDetails currency;

  OrderDetail({
    required this.orderId,
    required this.invoiceNo,
    required this.invoicePrefix,
    required this.storeId,
    required this.storeName,
    required this.storeUrl,
    required this.customerId,
    required this.firstName,
    required this.lastName,
    required this.telephone,
    required this.email,
    required this.paymentFirstname,
    required this.paymentLastname,
    required this.paymentCompany,
    required this.paymentAddress1,
    required this.paymentAddress2,
    required this.paymentPostcode,
    required this.paymentCity,
    required this.paymentZoneId,
    required this.paymentZone,
    required this.paymentZoneCode,
    required this.paymentCountryId,
    required this.paymentCountry,
    required this.paymentIsoCode2,
    required this.paymentIsoCode3,
    required this.paymentAddressFormat,
    required this.paymentMethod,
    required this.shippingFirstname,
    required this.shippingLastname,
    required this.shippingCompany,
    required this.shippingAddress1,
    required this.shippingAddress2,
    required this.shippingPostcode,
    required this.shippingCity,
    required this.shippingZoneId,
    required this.shippingZone,
    required this.shippingZoneCode,
    required this.shippingCountryId,
    required this.shippingCountry,
    required this.shippingIsoCode2,
    required this.shippingIsoCode3,
    required this.shippingAddressFormat,
    required this.shippingMethod,
    required this.comment,
    required this.total,
    required this.orderStatusId,
    required this.languageId,
    required this.currencyId,
    required this.currencyCode,
    required this.currencyValue,
    required this.dateModified,
    required this.dateAdded,
    required this.ip,
    required this.paymentAddress,
    required this.shippingAddress,
    required this.products,
    required this.vouchers,
    required this.totals,
    required this.histories,
    required this.timestamp,
    required this.currency,
  });

  factory OrderDetail.fromJson(Map<String, dynamic> json) {
    var productsList = json['products'] as List<dynamic>;
    var totalsList = json['totals'] as List<dynamic>;
    var historiesList = json['histories'] as List<dynamic>;

    var products = productsList.map((productJson) =>
        Product.fromJson(productJson)).toList();
    var totals = totalsList.map((totalJson) => Total.fromJson(totalJson))
        .toList();
    var histories = historiesList.map((historyJson) =>
        History.fromJson(historyJson)).toList();

    return OrderDetail(
      orderId: json['order_id'],
      invoiceNo: json['invoice_no'],
      invoicePrefix: json['invoice_prefix'],
      storeId: json['store_id'],
      storeName: json['store_name'],
      storeUrl: json['store_url'],
      customerId: json['customer_id'],
      firstName: json['firstname'],
      lastName: json['lastname'],
      telephone: json['telephone'],
      email: json['email'],
      paymentFirstname: json['payment_firstname'],
      paymentLastname: json['payment_lastname'],
      paymentCompany: json['payment_company'],
      paymentAddress1: json['payment_address_1'],
      paymentAddress2: json['payment_address_2'],
      paymentPostcode: json['payment_postcode'],
      paymentCity: json['payment_city'],
      paymentZoneId: json['payment_zone_id'],
      paymentZone: json['payment_zone'],
      paymentZoneCode: json['payment_zone_code'],
      paymentCountryId: json['payment_country_id'],
      paymentCountry: json['payment_country'],
      paymentIsoCode2: json['payment_iso_code_2'],
      paymentIsoCode3: json['payment_iso_code_3'],
      paymentAddressFormat: json['payment_address_format'],
      paymentMethod: json['payment_method'],
      shippingFirstname: json['shipping_firstname'],
      shippingLastname: json['shipping_lastname'],
      shippingCompany: json['shipping_company'],
      shippingAddress1: json['shipping_address_1'],
      shippingAddress2: json['shipping_address_2'],
      shippingPostcode: json['shipping_postcode'],
      shippingCity: json['shipping_city'],
      shippingZoneId: json['shipping_zone_id'],
      shippingZone: json['shipping_zone'],
      shippingZoneCode: json['shipping_zone_code'],
      shippingCountryId: json['shipping_country_id'],
      shippingCountry: json['shipping_country'],
      shippingIsoCode2: json['shipping_iso_code_2'],
      shippingIsoCode3: json['shipping_iso_code_3'],
      shippingAddressFormat: json['shipping_address_format'],
      shippingMethod: json['shipping_method'],
      comment: json['comment'],
      total: json['total'],
      orderStatusId: json['order_status_id'],
      languageId: json['language_id'],
      currencyId: json['currency_id'],
      currencyCode: json['currency_code'],
      currencyValue: json['currency_value'],
      dateModified: json['date_modified'],
      dateAdded: json['date_added'],
      ip: json['ip'],
      paymentAddress: json['payment_address'],
      shippingAddress: json['shipping_address'],
      products: products,
      totals: totals,
      histories: histories,
      timestamp: DateTime.fromMillisecondsSinceEpoch(json['timestamp'] * 1000),
      vouchers: json['vouchers'],
      currency: CurrencyOrderDetails.fromJson(json['currency']),
    );
  }
}

class Product {
  final String productId;
  final String orderProductId;
  final String name;
  final String model;
  final List<Map<String, dynamic>> option;
  final String quantity;
  final String price;
  final String total;
  final int priceRaw;
  final String currencyCode;
  final int totalRaw;
  final String? returnLink;

  Product({
    required this.productId,
    required this.orderProductId,
    required this.name,
    required this.model,
    required this.option,
    required this.quantity,
    required this.price,
    required this.total,
    required this.priceRaw,
    required this.currencyCode,
    required this.totalRaw,
    this.returnLink,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      productId: json['product_id'],
      orderProductId: json['order_product_id'],
      name: json['name'],
      model: json['model'],
      option: List<Map<String, dynamic>>.from(json['option'] ?? []),
      quantity: json['quantity'],
      price: json['price'],
      total: json['total'],
      priceRaw: json['price_raw'],
      currencyCode: json['0'],
      totalRaw: json['total_raw'],
      returnLink: json['return'],
    );
  }
}


class Total {
  final String orderTotalId;
  final String orderId;
  final String code;
  final String title;
  final String value;
  final String sortOrder;

  Total({
    required this.orderTotalId,
    required this.orderId,
    required this.code,
    required this.title,
    required this.value,
    required this.sortOrder,
  });

  factory Total.fromJson(Map<String, dynamic> json) {
    return Total(
      orderTotalId: json['order_total_id'],
      orderId: json['order_id'],
      code: json['code'],
      title: json['title'],
      value: json['value'],
      sortOrder: json['sort_order'],
    );
  }
}

class History {
  final String dateAdded;
  final String status;
  final String comment;

  History({
    required this.dateAdded,
    required this.status,
    required this.comment,
  });

  factory History.fromJson(Map<String, dynamic> json) {
    return History(
      dateAdded: json['date_added'],
      status: json['status'],
      comment: json['comment'],
    );
  }
}


class CurrencyOrderDetails {
  final String currencyId;
  final String symbolLeft;
  final String symbolRight;
  final String decimalPlace;
  final String value;

  CurrencyOrderDetails({
    required this.currencyId,
    required this.symbolLeft,
    required this.symbolRight,
    required this.decimalPlace,
    required this.value,
  });

  factory CurrencyOrderDetails.fromJson(Map<String, dynamic> json) {
    return CurrencyOrderDetails(
      currencyId: json['currency_id'],
      symbolLeft: json['symbol_left'],
      symbolRight: json['symbol_right'],
      decimalPlace: json['decimal_place'],
      value: json['value'],
    );
  }
}

