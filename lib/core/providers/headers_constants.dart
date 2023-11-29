abstract class HeadersConstants {
  /*
  static final Map<String, String> common = {
    'Accept': 'application/json',
    'X-Oc-Merchant-Id': '123',
    'X-Oc-Session': "",
  };
   */

  static Map<String, String> session(String? merchantId) => {
        'Accept': 'application/json',
        'X-Oc-Merchant-Id': merchantId ?? "",
      };
}
