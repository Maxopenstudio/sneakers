/*
Author: XamDesign
Date: 15.06.2023
*/

import 'package:get/get.dart';

import 'package:xam_shoes_app/core/translations/translation_keys.dart';

enum OrderStatus {
  pending,
  accepted,
  packaging,
  shipping,
  delivered,
}

extension OrderStatusExtension on OrderStatus {
  String get enumToLocalizedString {
    switch (this) {
      case OrderStatus.pending:
        return TranslationKeys.pending.tr;
      case OrderStatus.accepted:
        return TranslationKeys.accepted.tr;
      case OrderStatus.packaging:
        return TranslationKeys.packaging.tr;
      case OrderStatus.shipping:
        return TranslationKeys.shipping.tr;
      case OrderStatus.delivered:
        return TranslationKeys.delivered.tr;
      default:
        return TranslationKeys.pending.tr;
    }
  }
}
