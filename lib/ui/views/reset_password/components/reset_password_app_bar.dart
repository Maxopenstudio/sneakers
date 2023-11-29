// ignore_for_file: avoid_field_initializers_in_const_classes

/*
Author: XamDesign
Date: 30.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/widgets/custom_app_bar/custom_app_bar.dart';

class ResetPasswordAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const ResetPasswordAppBar({
    super.key,
  }) : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(title: TranslationKeys.forgotPassword.tr.toUpperCase());
  }
}
