import 'dart:async';
import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:xam_shoes_app/core/models/auxiliary/api_response.dart';
import 'package:xam_shoes_app/core/models/content/category_model.dart';
import 'package:xam_shoes_app/core/models/content/manufacturer_model.dart';
import 'package:xam_shoes_app/core/providers/headers_constants.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';

import '../../models/auxiliary/session.dart';
import '../providers_constants.dart';

class ApiService extends GetConnect implements GetxService {
  String? _session;
  late http.Client _httpClient;

  String? get session => _session;

  @override
  void onInit() async {
    _httpClient = http.Client(); // Временное решение
    /*
    httpClient.baseUrl = ProvidersConstants.baseUrl;
    print("onInit _merchantId: $_merchantId");
    if (_merchantId != null) {
      _merchantId = merchantId;
      _session = await _getSession();
    }
    // TODO: Сделать чтение с локального хранилища на наличие id сессии
     */
    super.onInit();
  }

  Future<ApiService> init() async {
    _session = await _getSession();

    // TODO: Нужно убедиться что это самое подходящее место для фетчей данных после получения id сессии
    await BaseController.categoriesController.fetchCategories().whenComplete(() => print("Categories FETCHED"));
    return this;
  }

  Future<ApiService> reset() async {
    _session = null;
    return this;
  }

  Future<String?> _getSession() async {
    try {
      final response = await _httpClient.get(
        Uri.https(ProvidersConstants.baseUrl, "api/rest/session"),
        headers: HeadersConstants.session(ProvidersConstants.merchantID),
      );
      print("site: ${response.body} | ${response.statusCode}");
      final apiResponse = ApiResponse.fromJson(jsonDecode(response.body));
      if (apiResponse.isSuccess) {
        return Future.value(Session.fromJson(apiResponse.data).session);
      } else {
        return Future.error(Exception(apiResponse.error));
      }
    } catch (e) {
      return Future.error(Exception("_getSession Request error: $e"));
    }
  }

  Future<List<Category>> getCategories() async {
    try {
      final response = await _httpClient.get(
        Uri.https(ProvidersConstants.baseUrl, "api/rest/categories"),
        headers: HeadersConstants.common(ProvidersConstants.merchantID, _session),
      );
      print("site: ${response.body} | ${response.statusCode}");
      final apiResponse = ApiResponse.fromJson(jsonDecode(response.body));
      if (apiResponse.isSuccess) {
        return Future.value((apiResponse.data as List).map((e) => Category.fromJson(e)).toList());
      } else {
        return Future.error(Exception(apiResponse.error));
      }
    } catch (e) {
      return Future.error(Exception("getCategories Request error: $e"));
    }
  }

  Future<List<Manufacturer>> getManufacturers() async {
    try {
      final response = await _httpClient.get(
        Uri.https(ProvidersConstants.baseUrl, "api/rest/manufacturers"),
        headers: HeadersConstants.common(ProvidersConstants.merchantID, _session),
      );
      print("site: ${response.body} | ${response.statusCode}");
      final apiResponse = ApiResponse.fromJson(jsonDecode(response.body));
      if (apiResponse.isSuccess) {
        return Future.value((apiResponse.data as List).map((e) => Manufacturer.fromJson(e)).toList());
      } else {
        return Future.error(Exception(apiResponse.error));
      }
    } catch (e) {
      return Future.error(Exception("getManufacturers Request error: $e"));
    }
  }
}
