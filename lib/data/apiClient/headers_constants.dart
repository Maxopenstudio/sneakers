abstract class HeadersConstants {
  static Map<String, String> common(String? merchantId, String? session) => {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'X-Oc-Merchant-Id': merchantId ?? "",
        'X-Oc-Session': session ?? "",
      };

  static Map<String, String> session(String? merchantId) => {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'X-Oc-Merchant-Id': merchantId ?? "",
      };
}
