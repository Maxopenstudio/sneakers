import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/data/apiClient/headers_constants.dart';
import 'package:shoes_app/data/auth_controller/models/personal_data_model.dart';
import 'package:shoes_app/presentation/home_screen_page/models/product_model.dart';

import '../../presentation/categories_screen/models/categories_item_model.dart';
import 'models/api_response.dart';

class ApiClient extends GetConnect {
  static String merchantID = dotenv.get('MERCHANT_ID');
  static Rx<String> sessionID = "".obs;
  static String scheme = 'http';
  static Uri uri = Uri(scheme: scheme, host: dotenv.get('API_URL'));

  Rx<String> get sessionIDStream => sessionID;

  @override
  void onInit() async {
    final String? loadedSession = await PrefUtils.getSessionId();
    if (loadedSession == null) {
      await getSessionID().then((session) => session != null ? sessionID = session.obs : null);
      print("NEW SESSION: $sessionID");
      PrefUtils.setSessionId(sessionID.value);
    } else {
      sessionID = loadedSession.obs;
      print("LOADED SESSION: $loadedSession");
    }
    super.onInit();
  }

  Future<String?> getSessionID() async {
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

  Future<List<ProductModel>?> getProductsByCategoryId(int id) async {
    try {
      final response = await get(uri.replace(path: 'api/rest/products/category/$id').toString(), headers: HeadersConstants.common(merchantID, sessionID.value));
      final apiResponse = ApiResponse.fromJson(response.body);
      if (apiResponse.isSuccess) {
        return Future.value(((apiResponse.data) as List).map((category) {
          return ProductModel.fromJson(category);
        }).toList());
      } else {
        return Future.error(Exception(apiResponse.error));
      }
    } catch (e) {
      return Future.error(Exception("getProductsByCategoryId($id) Request error: $e"));
    }
  }

  Future<List<ProductModel>?> getBestsellerProducts({int limit = 10}) async {
    try {
      final response = await get(uri.replace(path: 'api/rest/bestsellers/limit/$limit').toString(), headers: HeadersConstants.common(merchantID, sessionID.value));
      final apiResponse = ApiResponse.fromJson(response.body);
      if (apiResponse.isSuccess) {
        return Future.value(((apiResponse.data) as List).map((product) {
          return ProductModel.fromJson(product);
        }).toList());
      } else {
        return Future.error(Exception(apiResponse.error));
      }
    } catch (e) {
      return Future.error(Exception("getBestsellerProducts($limit) Request error: $e"));
    }
  }

  Future<ProductModel> getProduct(int productId) async {
    try {
      final response = await get(uri.replace(path: 'api/rest/products/$productId').toString(), headers: HeadersConstants.common(merchantID, sessionID.value));
      final apiResponse = ApiResponse.fromJson(response.body);
      if (apiResponse.isSuccess) {
        return Future.value(ProductModel.fromJson(apiResponse.data));
      } else {
        return Future.error(Exception(apiResponse.error));
      }
    } catch (e) {
      return Future.error(Exception("getProduct($productId) Request error: $e"));
    }
  }

  Future<List<ProductModel>> getAllProducts() async {
    try {
      final response = await get(uri.replace(path: 'api/rest/products').toString(), headers: HeadersConstants.common(merchantID, sessionID.value));
      final apiResponse = ApiResponse.fromJson(response.body);
      if (apiResponse.isSuccess) {
        return Future.value(((apiResponse.data) as List).map((product) {
          return ProductModel.fromJson(product);
        }).toList());
      } else {
        return Future.error(Exception(apiResponse.error));
      }
    } catch (e) {
      return Future.error(Exception("getAllProducts() Request error: $e"));
    }
  }

  Future<List<ProductModel>> getFeaturedProducts() async {
    try {
      final response = await get(uri.replace(path: 'api/rest/featured').toString(), headers: HeadersConstants.common(merchantID, sessionID.value));
      final apiResponse = ApiResponse.fromJson(response.body);
      if (apiResponse.isSuccess) {
        return Future.value((((apiResponse.data) as List).first["products"] as List).map((product) {
          return ProductModel.fromJson(product);
        }).toList());
      } else {
        return Future.error(Exception(apiResponse.error));
      }
    } catch (e) {
      return Future.error(Exception("getFeaturedProducts() Request error: $e"));
    }
  }

  // AUTH
  Future<PersonalDataModel?> register({
    required String firstname,
    required String lastname,
    required String email,
    required String password,
    required String confirm,
    required String telephone,
    required bool agree,
  }) async {
    try {
      final response = await post(uri.replace(path: 'api/rest/register').toString(), {"firstname": firstname, "lastname": lastname, "email": email, "password": password, "confirm": confirm, "telephone": telephone, "customer_group_id": 1, "agree": agree ? 1 : 0, "address_1": "qwe", "city": "zp", "country_id": 220, "zone_id": 3504}, headers: HeadersConstants.common(merchantID, sessionID.value));
      final apiResponse = ApiResponse.fromJson(response.body);
      if (apiResponse.isSuccess) {
        print("response.body: ${response.body}");
        return Future.value(PersonalDataModel.fromJson(apiResponse.data));
      } else {
        print("ERROR: ${apiResponse.error}");
        return Future.error(apiResponse.error);
      }
    } catch (e) {
      return Future.error(Exception("getFeaturedProducts() Request error: $e"));
    }
  }

  Future<PersonalDataModel?> login() async {
    try {
      final response = await post(uri.replace(path: 'api/rest/login').toString(), {{
        "email": "test@gmail.com",
        "password": "1111"
      }}, headers: HeadersConstants.common(merchantID, sessionID.value));
      final apiResponse = ApiResponse.fromJson(response.body);
      if (apiResponse.isSuccess) {
        print("response.body: ${response.body}");
        return Future.value(PersonalDataModel.fromJson(apiResponse.data));
      } else {
        print("ERROR: ${apiResponse.error}");
        return Future.error(apiResponse.error);
      }
    } catch (e) {
      return Future.error(Exception("getFeaturedProducts() Request error: $e"));
    }
  }

  Future<PersonalDataModel?> getAccount() async {
    try {
      final response = await get(uri.replace(path: 'api/rest/account').toString(), headers: HeadersConstants.common(merchantID, sessionID.value));
      final apiResponse = ApiResponse.fromJson(response.body);
      print("SESSION: ${sessionID.value}");
      print("GET ACCOUNT: ${response.body}");
      if (apiResponse.isSuccess) {
        print("response.body: ${response.body}");
        return Future.value(PersonalDataModel.fromJson(apiResponse.data));
      } else if (response.statusCode == 403){
        return Future.value(null);
      } else {
        print("ERROR: ${apiResponse.error}");
        return Future.error(apiResponse.error);
      }
    } catch (e) {
      return Future.error(Exception("getFeaturedProducts() Request error: $e"));
    }
  }
}
