import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class ProvidersConstants {
  static String baseUrl = dotenv.get('API_URL');
  static String merchantID = dotenv.get('MERCHANT_ID');
}
