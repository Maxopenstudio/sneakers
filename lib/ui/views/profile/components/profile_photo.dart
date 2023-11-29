/*
Author: XamDesign
Date: 9.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';

class ProfilePhoto extends BaseStatelessWidget {
  const ProfilePhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          Image.asset("assets/images/profile_picture.png",
              width: 100.0, height: 100.0),
          const SizedBox(height: 16.0),
          Column(
            children: [
              Text(
                "XamDesign",
                style: context.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                TranslationKeys.changePhoto.tr,
                style: context.textTheme.bodyMedium?.copyWith(
                  color: kLightTextSecondaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
