import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/data/apiClient/headers_constants.dart';
import 'package:shoes_app/data/auth_controller/models/personal_data_model.dart';
import 'package:shoes_app/presentation/home_screen_page/models/product_model.dart';
import 'package:shoes_app/presentation/search_screen/models/popular_product.dart';

import '../../presentation/cart_screen/models/cart_product_model.dart';
import '../../presentation/categories_screen/models/categories_item_model.dart';
import '../../presentation/check_out_three_screen/models/check_out_three_model.dart';
import '../../presentation/home_screen_page/models/slideshow_model.dart';
import '../../presentation/order_details_two_screen/models/order_details_two_model.dart';
import '../../presentation/privacy_policy_screen/models/privacy_policy_model.dart';
import 'models/api_response.dart';

class ApiClient extends GetConnect {
  static String merchantID = dotenv.get('MERCHANT_ID');
  static Rx<String> sessionID = "".obs;
  static String scheme = 'http';
  static Uri uri = Uri(scheme: scheme, host: dotenv.get('API_URL'));
  Cookie? cookie;

  Rx<String> get sessionIDStream => sessionID;

  @override
  void onInit() async {
    final String? loadedSession = await PrefUtils.getSessionId();
    if (loadedSession == null) {
      await getSessionID()
          .then((session) => session != null ? sessionID = session.obs : null);
      print("NEW SESSION: $sessionID");
      PrefUtils.setSessionId(sessionID.value);
    } else {
      sessionID = loadedSession.obs;
      print("LOADED SESSION: $loadedSession");
      cookie = await PrefUtils.getCookie();
    }
    super.onInit();
  }

  void regenerateSessionId() async {
    await getSessionID()
        .then((session) => session != null ? sessionID = session.obs : null);
    PrefUtils.setSessionId(sessionID.value);
    print("REGENERATE SESSION ID: ${sessionID.value}");
  }

  Future<String?> getSessionID() async {
    try {
      final response = await post(
          uri.replace(path: 'api/rest/session').toString(), null,
          headers: HeadersConstants.session(merchantID));
      final apiResponse = ApiResponse.fromJson(response.body);
      print("SESSION Set-Cookie: ${response.headers}");

      if (apiResponse.isSuccess) {
        if (response.headers?['set-cookie'] != null) {
          cookie = Cookie.fromSetCookieValue(response.headers!['set-cookie']!);
          PrefUtils.setCookie(cookie!);
        }
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
      final response = await get(
          uri.replace(path: 'api/rest/categories/level/2').toString(),
          headers: HeadersConstants.common(
              merchantID, sessionID.value, cookie.toString()));
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
      final response = await get(
          uri.replace(path: 'api/rest/products/category/$id').toString(),
          headers: HeadersConstants.common(
              merchantID, sessionID.value, cookie.toString()));
      final apiResponse = ApiResponse.fromJson(response.body);
      if (apiResponse.isSuccess) {
        return Future.value(((apiResponse.data) as List).map((category) {
          return ProductModel.fromJson(category);
        }).toList());
      } else {
        return Future.error(Exception(apiResponse.error));
      }
    } catch (e) {
      return Future.error(
          Exception("getProductsByCategoryId($id) Request error: $e"));
    }
  }

  Future<List<ProductModel>?> getBestsellerProducts({int limit = 10}) async {
    try {
      final response = await get(
          uri.replace(path: 'api/rest/bestsellers/limit/$limit').toString(),
          headers: HeadersConstants.common(
              merchantID, sessionID.value, cookie.toString()));
      final apiResponse = ApiResponse.fromJson(response.body);
      if (apiResponse.isSuccess) {
        return Future.value(((apiResponse.data) as List).map((product) {
          return ProductModel.fromJson(product);
        }).toList());
      } else {
        return Future.error(Exception(apiResponse.error));
      }
    } catch (e) {
      return Future.error(
          Exception("getBestsellerProducts($limit) Request error: $e"));
    }
  }

  Future<ProductModel> getProduct(int productId) async {
    try {
      final response = await get(
          uri.replace(path: 'api/rest/products/$productId').toString(),
          headers: HeadersConstants.common(
              merchantID, sessionID.value, cookie.toString()));
      final apiResponse = ApiResponse.fromJson(response.body);
      if (apiResponse.isSuccess) {
        return Future.value(ProductModel.fromJson(apiResponse.data));
      } else {
        return Future.error(Exception(apiResponse.error));
      }
    } catch (e) {
      return Future.error(
          Exception("getProduct($productId) Request error: $e"));
    }
  }

  Future<List<ProductModel>> getAllProducts() async {
    try {
      final response = await get(
          uri.replace(path: 'api/rest/products').toString(),
          headers: HeadersConstants.common(
              merchantID, sessionID.value, cookie.toString()));
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
      final response = await get(
          uri.replace(path: 'api/rest/featured').toString(),
          headers: HeadersConstants.common(
              merchantID, sessionID.value, cookie.toString()));
      final apiResponse = ApiResponse.fromJson(response.body);
      if (apiResponse.isSuccess) {
        return Future.value(
            (((apiResponse.data) as List).first["products"] as List)
                .map((product) {
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
  Future<dynamic> register({
    required String firstname,
    required String lastname,
    required String email,
    required String password,
    required String confirm,
    required String telephone,
    required bool agree,
  }) async {
    try {
      final response = await post(
          uri.replace(path: 'api/rest/register').toString(),
          {
            "firstname": firstname,
            "lastname": lastname,
            "email": email,
            "password": password,
            "confirm": confirm,
            "telephone": telephone,
            "customer_group_id": 1,
            "agree": agree ? 1 : 0,
            "address_1": "qwe",
            "city": "zp",
            "country_id": 220,
            "zone_id": 3504
          },
          headers: HeadersConstants.common(
              merchantID, sessionID.value, cookie.toString()));
      print(response.body);
      final apiResponse = ApiResponse.fromJson(response.body);
      if (apiResponse.isSuccess) {
        print("response.body: ${response.body}");
        return Future.value(PersonalDataModel.fromJson(apiResponse.data));
      } else {
        print("ERROR: ${apiResponse.error}");
        return Future.value(apiResponse.error);
      }
    } catch (e) {
      return Future.error(Exception("register() Request error: $e"));
    }
  }

  Future<dynamic> login(
      {required String email, required String password}) async {
    try {
      final response = await post(
          uri.replace(path: 'api/rest/login').toString(),
          {"email": email, "password": password},
          headers: HeadersConstants.common(
              merchantID, sessionID.value, cookie.toString()));
      print("login Set-Cookie: ${response.headers?['set-cookie']}");
      final apiResponse = ApiResponse.fromJson(response.body);
      if (apiResponse.isSuccess) {
        print("response.body: ${response.body}");
        return Future.value(PersonalDataModel.fromJson(apiResponse.data));
      } else {
        print("ERROR: ${apiResponse.error}");
        return Future.value(apiResponse.error);
      }
    } catch (e) {
      return Future.error(Exception("login() Request error: $e"));
    }
  }

  Future<PersonalDataModel?> getAccount() async {
    try {
      final response = await get(
          uri.replace(path: 'api/rest/account').toString(),
          headers: HeadersConstants.common(
              merchantID, sessionID.value, cookie.toString()));
      final apiResponse = ApiResponse.fromJson(response.body);
      print("GET ACCOUNT Set-Cookie: ${response.headers?['set-cookie']}");
      print("GET ACCOUNT SESSION: ${sessionID.value}");
      print("GET ACCOUNT: ${response.body}");
      if (apiResponse.isSuccess) {
        print("response.body: ${response.body}");
        return Future.value(PersonalDataModel.fromJson(apiResponse.data));
      } else if (response.statusCode == 403) {
        return Future.value(null);
      } else {
        print("ERROR: ${apiResponse.error}");
        return Future.error(apiResponse.error);
      }
    } catch (e) {
      return Future.error(Exception("getAccount() Request error: $e"));
    }
  }

  Future<dynamic> updatePassword(String password, String confirm) async {
    try {
      final response = await put(
          uri.replace(path: 'api/rest/account/password').toString(),
          {"password": password, "confirm": confirm},
          headers: HeadersConstants.common(
              merchantID, sessionID.value, cookie.toString()));
      final apiResponse = ApiResponse.fromJson(response.body);
      if (apiResponse.isSuccess) {
        print("response.body: ${response.body}");
        return Future.value(true);
      } else if (response.statusCode == 403) {
        return Future.value(false);
      } else {
        print("ERROR: ${apiResponse.error}");
        return Future.value(apiResponse.error);
      }
    } catch (e) {
      return Future.error(Exception("updatePassword() Request error: $e"));
    }
  }

  Future<bool> logout() async {
    try {
      final response = await post(
          uri.replace(path: 'api/rest/logout').toString(), null,
          headers: HeadersConstants.common(
              merchantID, sessionID.value, cookie.toString()));
      final apiResponse = ApiResponse.fromJson(response.body);
      if (apiResponse.isSuccess) {
        return Future.value(true);
      } else {
        return Future.value(false);
      }
    } catch (e) {
      return Future.error(Exception("logout() Request error: $e"));
    }
  }

  Future<List<int>> getFavoriteProducts() async {
    try {
      final response = await get(
          uri.replace(path: 'api/rest/wishlist').toString(),
          headers: HeadersConstants.common(
              merchantID, sessionID.value, cookie.toString()));
      final apiResponse = ApiResponse.fromJson(response.body);
      if (apiResponse.isSuccess) {
        print("favorite.body: ${response.body}");
        return Future.value((((apiResponse.data) as List).map((product) {
          print("favorite product - ${product["product_id"]}");
          return int.parse(product["product_id"] as String);
        }).toList()));
      } else {
        return Future.error(Exception(apiResponse.error));
      }
    } catch (e) {
      return Future.error(Exception("getFavoriteProducts() Request error: $e"));
    }
  }

  Future<void> addFavoriteProduct(int productId) async {
    try {
      final response = await post(
          uri.replace(path: 'api/rest/wishlist/$productId').toString(), null,
          headers: HeadersConstants.common(
              merchantID, sessionID.value, cookie.toString()));
      final apiResponse = ApiResponse.fromJson(response.body);
      if (apiResponse.isSuccess) {
        print('Product with ID $productId added to favorites.');
      } else {
        throw Exception(apiResponse.error);
      }
    } catch (e) {
      throw Exception("addFavoriteProducts($productId) Request error: $e");
    }
  }

  Future<void> removeFavoriteProduct(int productId) async {
    try {
      final response = await delete(
          uri.replace(path: 'api/rest/wishlist/$productId').toString(),
          headers: HeadersConstants.common(
              merchantID, sessionID.value, cookie.toString()));
      final apiResponse = ApiResponse.fromJson(response.body);
      if (apiResponse.isSuccess) {
        print('Product with ID $productId deleted from favorites.');
      } else {
        throw Exception(apiResponse.error);
      }
    } catch (e) {
      throw Exception("removeFavoriteProducts($productId) Request error: $e");
    }
  }

  Future<Cart> fetchCart() async {
    try {
      final response = await get(
        uri.replace(path: 'api/rest/cart').toString(),
        headers: HeadersConstants.common(
            merchantID, sessionID.value, cookie.toString()),
      );
      final apiResponse = ApiResponse.fromJson(response.body);
      if (apiResponse.isSuccess) {
        print(response.body);
        final dynamic responseData = apiResponse.data;
        print("responseData in fetchCart - ${responseData}");
        if (responseData is Map<String, dynamic> &&
            responseData.containsKey('products')) {
          final Cart cart = Cart.fromJson(apiResponse.data);
          print("fetchCart products - ${cart.products.length}");
          return cart;
        } else {
          return Cart(
              weight: '',
              products: [],
              vouchers: [],
              couponStatus: null,
              coupon: '',
              voucherStatus: null,
              voucher: '',
              rewardStatus: false,
              reward: '',
              totals: [],
              total: '',
              totalRaw: 0,
              totalProductCount: 0,
              hasShipping: 0,
              hasDownload: 0,
              hasRecurringProducts: 0,
              currency: Currency(
                  currencyId: '',
                  symbolLeft: '',
                  symbolRight: '',
                  decimalPlace: '',
                  value: ''));
        }
      } else {
        throw Exception(apiResponse.error);
      }
    } catch (e) {
      throw Exception("fetchCart() Request error: $e");
    }
  }

  Future<void> removeProductFromCart(int productKey) async {
    try {
      final deleteUri = uri.replace(path: 'api/rest/cart/$productKey');
      final response = await delete(
        deleteUri.toString(),
        headers: HeadersConstants.common(
            merchantID, sessionID.value, cookie.toString()),
      );
      final apiResponse = ApiResponse.fromJson(response.body);
      if (apiResponse.isSuccess) {
        print('Product with key $productKey deleted from cart.');
      } else {
        throw Exception(apiResponse.error);
      }
    } catch (e) {
      throw Exception("removeProductFromCart() Request error: $e");
    }
  }

  Future<void> changeCartProductQuantity(int productKey, int quantity) async {
    try {
      final Map<String, dynamic> requestBody = {
        'key': productKey.toString(),
        'quantity': quantity.toString(),
      };
      final putUri = uri.replace(path: 'api/rest/cart/$productKey/$quantity');
      final response = await put(putUri.toString(), json.encode(requestBody),
          headers: HeadersConstants.common(
              merchantID, sessionID.value, cookie.toString()));
      final apiResponse = ApiResponse.fromJson(response.body);
      if (apiResponse.isSuccess) {
        print('Product with key $productKey change quantity to $quantity.');
      } else {
        throw Exception(apiResponse.error);
      }
    } catch (e) {
      throw Exception("changeCartProductQuantity() Request error: $e");
    }
  }

  Future<void> addProductCart(int productId, int quantity, int productOptionId,
      int productOptionValueId) async {
    try {
      final Map<String, dynamic> requestBody = {
        'product_id': productId.toString(),
        'quantity': quantity.toString(),
        'option': {productOptionId.toString(): productOptionValueId.toString()}
      };
      final postUri = uri.replace(
          path:
              'api/rest/cart/$productId/$quantity/$productOptionId/$productOptionValueId');
      final response = await post(postUri.toString(), json.encode(requestBody),
          headers: HeadersConstants.common(
              merchantID, sessionID.value, cookie.toString()));
      final apiResponse = ApiResponse.fromJson(response.body);
      if (apiResponse.isSuccess) {
        print('Product with key $productId added to cart.');
      } else {
        throw Exception(apiResponse.error);
      }
    } catch (e) {
      throw Exception("addProductCart() Request error: $e");
    }
  }

  Future<dynamic> addCoupon({required String coupon}) async {
    try {
      final response = await post(
          uri.replace(path: 'api/rest/coupon').toString(), {"coupon": coupon},
          headers: HeadersConstants.common(
              merchantID, sessionID.value, cookie.toString()));
      final apiResponse = ApiResponse.fromJson(response.body);
      if (apiResponse.isSuccess) {
        print("response.body: ${response.body}");
      } else {
        print("ERROR: ${apiResponse.error}");
        throw apiResponse.error.first;
      }
    } catch (e) {
      rethrow;
    }
  }
  Future<List<PopularProduct>?> fetchPopularProducts(int limit) async {
    try {
      final response = await get(
          uri.replace(path: 'api/rest/bestsellers/limit/$limit').toString(),
          headers: HeadersConstants.common(
              merchantID, sessionID.value, cookie.toString()));
      final apiResponse = ApiResponse.fromJson(response.body);
      if (apiResponse.isSuccess) {
        return Future.value(((apiResponse.data) as List).map((product) {
          return PopularProduct.fromJson(product);
        }).toList());
      } else {
        return Future.error(Exception(apiResponse.error));
      }
    } catch (e) {
      return Future.error(
          Exception("fetchPopularProducts($limit) Request error: $e"));
    }
  }

  Future<List<ProductModel>?> fetchProductBySearch(String search) async {
    try {
      final response = await get(
          uri.replace(path: 'api/rest/products/search/$search').toString(),
          headers: HeadersConstants.common(
              merchantID, sessionID.value, cookie.toString()));
      final apiResponse = ApiResponse.fromJson(response.body);
      if (apiResponse.isSuccess) {
        return Future.value(((apiResponse.data) as List).map((product) {
          return ProductModel.fromJson(product);
        }).toList());
      } else {
        return Future.error(Exception(apiResponse.error));
      }
    } catch (e) {
      return Future.error(
          Exception("fetchProductBySearch($search) Request error: $e"));
    }
  }

  Future<List<Order>> fetchCustomerOrders() async {
    try {
      final response = await get(
          uri.replace(path: 'api/rest/customerorders').toString(),
          headers: HeadersConstants.common(
              merchantID, sessionID.value, cookie.toString()));
      final apiResponse = ApiResponse.fromJson(response.body);
      if (apiResponse.isSuccess) {
        print(response.body);
        final dynamic responseData = apiResponse.data;
        print("responseData in fetchCustomerOrders - ${responseData}");
        if (responseData is List<dynamic>) {
          if (responseData.isEmpty) {
            return <Order>[];
          }
          List<Order> orders = [];
          for (var data in responseData) {
            orders.add(Order.fromJson(data));
          }
          return orders;
        } else {
          return <Order>[];
        }
      } else {
        throw Exception(apiResponse.error);
      }
    } catch (e) {
      throw Exception("fetchCustomerOrders() Request error: $e");
    }
  }

  Future<OrderDetail> fetchOrderDetails(int orderId) async {
    try {
      final response = await get(
        uri.replace(path: 'api/rest/customerorders/$orderId').toString(),
        headers: HeadersConstants.common(
            merchantID, sessionID.value, cookie.toString()),
      );
      final apiResponse = ApiResponse.fromJson(response.body);
      if (apiResponse.isSuccess) {
        print(response.body);
        final dynamic responseData = apiResponse.data;
        print("responseData in fetchOrderDetails - ${responseData}");
        if (responseData is Map<String, dynamic> &&
            responseData.containsKey('order_id')) {
          final OrderDetail orderDetail =
              OrderDetail.fromJson(apiResponse.data);
          print("fetchOrderDetails products - ${orderDetail.products.length}");
          return orderDetail;
        } else {
          return OrderDetail(
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
          );
        }
      } else {
        throw Exception(apiResponse.error);
      }
    } catch (e) {
      throw Exception("fetchOrderDetails() Request error: $e");
    }
  }

  Future<List<PrivacyPolicyModel>> fetchTermsAndPolicyData() async {
    try {
      final response = await get(
          uri.replace(path: '/index.php',query: 'route=rest/information').toString(),
          headers: HeadersConstants.common(
              merchantID, sessionID.value, cookie.toString()));
      final apiResponse = ApiResponse.fromJson(response.body);
      if (apiResponse.isSuccess) {
        print(response.body);
        final dynamic responseData = apiResponse.data;
        List<PrivacyPolicyModel> privacyPolicyList = [];
        for (var data in responseData) {
          privacyPolicyList.add(PrivacyPolicyModel.fromJson(data));
        }
        return privacyPolicyList;
      } else {
        throw Exception(apiResponse.error);
      }
    } catch (e) {
      throw Exception("fetchPrivacyPolicy() Request error: $e");
    }
  }
  Future<List<SlideShow>> fetchSlideshow() async{
    try {
      final response = await get(
          uri.replace(path: 'api/rest/slideshows').toString(),
          headers: HeadersConstants.common(
              merchantID, sessionID.value, cookie.toString()));
      final apiResponse = ApiResponse.fromJson(response.body);
      if (apiResponse.isSuccess) {
        print(response.body);
        final dynamic responseData = apiResponse.data;
        List<SlideShow> slideShow = [];
        for (var data in responseData) {
          slideShow.add(SlideShow.fromJson(data));
        }
        return slideShow;
      } else {
        throw Exception(apiResponse.error);
      }
    } catch (e) {
      throw Exception("fetchSlideshow() Request error: $e");
    }
  }
}
