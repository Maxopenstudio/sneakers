// ignore_for_file: avoid_field_initializers_in_const_classes

/*
Author: XamDesign
Date: 9.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';
import 'package:xam_shoes_app/core/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:xam_shoes_app/core/widgets/custom_app_bar/custom_app_bar_back_button.dart';

class ReviewAppBar extends BaseStatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const ReviewAppBar({
    super.key,
  }) : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: TranslationKeys.review.tr.toUpperCase(),
      leading: const CustomAppBarBackButton(),
    );
  }
}
