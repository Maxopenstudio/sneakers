import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/order_details_two_screen/models/order_details_two_model.dart';

import '../../../data/apiClient/api_client.dart';

class OrderDetailsTwoController extends GetxController {
  OrderDetailsTwoController(this.apiClient);

  final ApiClient apiClient;
  Rx<OrderDetail> orderDetails = OrderDetail(
    orderId: '',
    invoiceNo: '',
    invoicePrefix: '',
    storeId: '',
    storeName: '',
    storeUrl: '',
    customerId: '',
    firstName: '',
    lastName: '',
    telephone: '',
    email: '',
    paymentFirstname: '',
    paymentLastname: '',
    paymentCompany: '',
    paymentAddress1: '',
    paymentAddress2: '',
    paymentPostcode: '',
    paymentCity: '',
    paymentZoneId: '',
    paymentZone: '',
    paymentZoneCode: '',
    paymentCountryId: '',
    paymentCountry: '',
    paymentIsoCode2: '',
    paymentIsoCode3: '',
    paymentAddressFormat: '',
    paymentMethod: '',
    shippingFirstname: '',
    shippingLastname: '',
    shippingCompany: '',
    shippingAddress1: '',
    shippingAddress2: '',
    shippingPostcode: '',
    shippingCity: '',
    shippingZoneId: '',
    shippingZone: '',
    shippingZoneCode: '',
    shippingCountryId: '',
    shippingCountry: '',
    shippingIsoCode2: '',
    shippingIsoCode3: '',
    shippingAddressFormat: '',
    shippingMethod: '',
    comment: '',
    total: '',
    orderStatusId: '',
    languageId: '',
    currencyId: '',
    currencyCode: '',
    currencyValue: '',
    dateModified: '',
    dateAdded: '',
    ip: '',
    paymentAddress: '',
    shippingAddress: '',
    products: [],
    vouchers: [],
    totals: [],
    histories: [],
    timestamp: DateTime(2009),
    currency: CurrencyOrderDetails(
        currencyId: '',
        symbolLeft: '',
        symbolRight: '',
        decimalPlace: '',
        value: ''),
  ).obs;
  String? get discount  {
    final  discountList = orderDetails.value.totals.where((element) => element.code == "coupon").toList();
    return discountList.isEmpty ? "0" : discountList.first.value;
  }

  Future<void> fetchOrderDetail(int orderId) async {
    try {
      orderDetails.value = await apiClient.fetchOrderDetails(orderId);
      print('fetchOrderDetail result - ${orderDetails.value}');
    } catch (e) {
      print("OrderDetailsTwoController - fetchorderDetail $e");
    }
  }

  String formatStringValue(String value) {
    double parsedValue = double.tryParse(value) ?? 0.0;
    String formattedValue = parsedValue.toStringAsFixed(2);
    return formattedValue;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
