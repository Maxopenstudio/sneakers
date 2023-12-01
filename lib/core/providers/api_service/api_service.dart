import 'dart:async';

import 'package:get/get.dart';
import 'package:xam_shoes_app/core/models/auxiliary/api_response.dart';
import 'package:xam_shoes_app/core/models/auxiliary/session.dart';
import 'package:xam_shoes_app/core/models/content/category_model.dart';
import 'package:xam_shoes_app/core/models/content/manufacturer_model.dart';
import 'package:xam_shoes_app/core/providers/headers_constants.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';

import '../providers_constants.dart';

class ApiService extends GetConnect implements GetxService {
  String? _merchantId;
  String? _session;

  String? get merchantId => _merchantId;

  String? get session => _session;

  ApiService({String? merchantId}) : _merchantId = merchantId;

  /*
  @override
  void onInit() async {
    httpClient.baseUrl = ProvidersConstants.baseUrl;
    print("onInit _merchantId: $_merchantId");
    if (_merchantId != null) {
      _merchantId = merchantId;
      _session = await _getSession();
    }
    // TODO: Сделать чтение с локального хранилища на наличие id сессии
    super.onInit();
  }
   */

  Future<ApiService> init(String merchantId) async {
    _merchantId = merchantId;
    _session = await _getSession();

    // TODO: Нужно убедиться что это самое подходящее место для фетчей данных после получения id сессии
    await BaseController.categoriesController.fetchCategories().whenComplete(() => print("Categories FETCHED"));
    return this;
  }

  Future<ApiService> reset() async {
    _session = null;
    _merchantId = null;
    return this;
  }

  Future<String?> _getSession() async {
    final response = await post(
      "${ProvidersConstants.baseUrl}/session",
      "",
      headers: HeadersConstants.session(_merchantId),
    );

    return Future.value(""); // TODO: Временная заглушка пока не пофиксят получение id сессии

    if (response.status.isOk) {
      final apiResponse = ApiResponse.fromJson(response.body);
      if (apiResponse.isSuccess) {
        return Future.value(Session.fromJson(apiResponse.data).session);
      } else {
        return Future.error(Exception(apiResponse.error));
      }
    } else if (response.status.hasError) {
      return Future.error(Exception("Check your internet connection"));
    }
    return Future.error(Exception());
  }

  Future<List<Category>> getCategories() async {
    final response = await get(
      "${ProvidersConstants.baseUrl}/categories",
      headers: HeadersConstants.common(_merchantId, _session),
    );
    print("${ProvidersConstants.baseUrl}/categories");
    print(HeadersConstants.common(_merchantId, _session));

    print(response.status);

    if (response.status.isOk) {
      final apiResponse = ApiResponse.fromJson(response.body);
      if (apiResponse.isSuccess) {
        return Future.value((apiResponse.data as List).map((e) => Category.fromJson(e)).toList());
      } else {
        return Future.error(Exception(apiResponse.error));
      }
    } else if (response.status.hasError) {
      return Future.error(Exception("Check your internet connection"));
    }
    return Future.error(Exception());
  }

  Future<List<Manufacturer>> getManufacturers() async {
    final response = await get(
      "${ProvidersConstants.baseUrl}/manufacturers",
      headers: HeadersConstants.common(_merchantId, _session),
    );
    print(response.status);

    if (response.status.isOk) {
      final apiResponse = ApiResponse.fromJson(response.body);
      if (apiResponse.isSuccess) {
        return Future.value((apiResponse.data as List).map((e) => Manufacturer.fromJson(e)).toList());
      } else {
        return Future.error(Exception(apiResponse.error));
      }
    } else if (response.status.hasError) {
      return Future.error(Exception("Check your internet connection"));
    }
    return Future.error(Exception());
  }
}
