import 'dart:async';

import 'package:get/get.dart';
import 'package:xam_shoes_app/core/models/session.dart';
import 'package:xam_shoes_app/core/providers/headers_constants.dart';
import 'package:xam_shoes_app/core/providers/providers_constants.dart';

class SessionService extends GetConnect with GetxServiceMixin {
  String? _merchantId;
  String? _session;

  String? get merchantId => _merchantId;

  String? get session => _session;

  Future<SessionService> reset() async {
    _session = null;
    _merchantId = null;
    return this;
  }

  Future<SessionService> init(String merchantId) async {
    _merchantId = merchantId;
    _session = await _getSession();
    return this;
  }

  Future<String?> _getSession() async {
    final response = await get(
      "${ProvidersConstants.baseUrl}/session",
      headers: HeadersConstants.session(_merchantId),
    );
    print(response.status);

    if (response.status.isOk) {
      final session = Session.fromJson(response.body);
      if (session.isSuccess) {
        return Future.value(session.getSession);
      } else {
        return Future.error(Exception(session.error));
      }
    } else if (response.status.hasError) {
      return Future.error(Exception("Check your internet connection"));
    }
    return Future.error(Exception());
  }
}
