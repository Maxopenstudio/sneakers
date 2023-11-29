/*
Author: XamDesign
Date: 3.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';

class OrderSuccessfulText extends BaseStatelessWidget {
  const OrderSuccessfulText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        TranslationKeys.orderDoneSuccessfully.tr,
        style: context.textTheme.titleSmall?.copyWith(
          color: kLightTextSecondaryColor,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
