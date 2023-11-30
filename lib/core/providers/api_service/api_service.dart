import 'dart:async';

import 'package:get/get.dart';
import 'package:xam_shoes_app/core/models/auxiliary/api_response.dart';
import 'package:xam_shoes_app/core/models/auxiliary/session.dart';
import 'package:xam_shoes_app/core/providers/headers_constants.dart';

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
    return this;
  }

  Future<ApiService> reset() async {
    _session = null;
    _merchantId = null;
    return this;
  }

  Future<String?> _getSession() async {
    final response = await get(
      "${httpClient.baseUrl}/session",
      headers: HeadersConstants.session(_merchantId),
    );
    print(response.status);

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
}
