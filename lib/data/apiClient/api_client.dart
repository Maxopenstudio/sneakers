import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/data/apiClient/headers_constants.dart';

import '../../presentation/categories_screen/models/categories_item_model.dart';
import 'models/api_response.dart';

class ApiClient extends GetConnect {
  static String merchantID = dotenv.get('MERCHANT_ID');
  static Rx<String> sessionID = "".obs;
  static String scheme = 'http';
  static Uri uri = Uri(scheme: scheme, host: dotenv.get('API_URL'));

  @override
  void onInit() async {
    await _getSessionID().then((session) => session != null ? sessionID = session.obs : null);
    print("SESSION: $sessionID");
    super.onInit();
  }

  Future<String?> _getSessionID() async {
    try {
      final response = await post(uri.replace(path: 'api/rest/session').toString(), null, headers: HeadersConstants.session(merchantID));
      final apiResponse = ApiResponse.fromJson(response.body);
      if (apiResponse.isSuccess) {
        return Future.value((apiResponse.data)['session']);
      } else {
        return Future.error(Exception(apiResponse.error));
      }
    } catch (e) {
      return Future.error(Exception("_getSessionID Request error: $e"));
    }
  }

  Future<List<CategoriesItemModel>?> getAllCategories() async {
    try {
      final response = await get(uri.replace(path: 'api/rest/categories/level/2').toString(), headers: HeadersConstants.common(merchantID, sessionID.value));
      final apiResponse = ApiResponse.fromJson(response.body);
      if (apiResponse.isSuccess) {
        print(apiResponse.data[0]);
        return Future.value(((apiResponse.data) as List).map((category) {
          //print(category);
          return CategoriesItemModel.fromJson(category);
        }).toList());
      } else {
        return Future.error(Exception(apiResponse.error));
      }
    } catch (e) {
      return Future.error(Exception("getAllCategories Request error: $e"));
    }
  }

}
