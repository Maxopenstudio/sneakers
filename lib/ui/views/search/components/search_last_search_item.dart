/*
Author: XamDesign
Date: 25.05.2023
*/

import 'package:flutter/material.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:get/get_utils/get_utils.dart';

class SearchLastSearchItem extends StatelessWidget {
  final String text;

  const SearchLastSearchItem({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => BaseController.searchShoeController.changeSearchText(text),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4.0),
        child: Text(
          text,
          style: context.textTheme.bodyLarge?.copyWith(
            color: BaseController.themeController.isDark.value
                ? kDarkTextColor
                : kLightTextSecondaryColor,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
