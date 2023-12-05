import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shoes_app/core/app_export.dart';

class ApiClient extends GetConnect {
  static String merchantID = dotenv.get('MERCHANT_ID');
  static String scheme = 'https';
  static Uri uri = Uri(scheme: scheme, host: dotenv.get('API_URL'));

  /*
  @override
  void onInit() {
    print(uri.replace(path: 'api/rest/categories'));
    super.onReady();
  }
  */

  getAllCategories() {
    get(uri.replace(path: 'api/rest/categories').toString());
  }

}
