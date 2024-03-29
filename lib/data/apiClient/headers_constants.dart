import 'package:shoes_app/core/app_export.dart';

abstract class HeadersConstants {
  static Map<String, String> common(String? merchantId, String? session, String? cookie,) => {
        'Cookie': cookie ?? "",
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'X-Oc-Merchant-Id': merchantId ?? "",
        'X-Oc-Session': session ?? "",
        'X-Oc-MerchantLanguage-': Get.locale!.languageCode,
      };

  static Map<String, String> session(String? merchantId) => {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'X-Oc-Merchant-Id': merchantId ?? "",
      };
}
