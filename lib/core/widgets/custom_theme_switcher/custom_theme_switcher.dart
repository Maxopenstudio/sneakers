/*
Author: XamDesign
Date: 24.05.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/utils/base/base_statefull.dart';
import 'package:xam_shoes_app/core/widgets/custom_theme_switcher/custom_theme_switcher_button.dart';

class CustomThemeSwitcher extends StatefulWidget {
  const CustomThemeSwitcher({
    super.key,
  });

  @override
  State<CustomThemeSwitcher> createState() => _CustomThemeSwitcherState();
}

class _CustomThemeSwitcherState extends BaseState<CustomThemeSwitcher> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        HapticFeedback.mediumImpact();
        BaseController.themeController.changeTheme(
          BaseController.themeController.isDark.value
              ? ThemeMode.light
              : ThemeMode.dark,
        );
      },
      child: Container(
        margin: const EdgeInsets.only(right: 16.0),
        padding: const EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: BaseController.themeController.isDark.value
                ? kDarkStrokeColor
                : kLightTextSecondaryColor.withOpacity(0.2),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(48.0),
        ),
        child: Row(
          children: [
            CustomThemeSwitcherButton(
              icon: "assets/images/light_mode.svg",
              backgroundColor: BaseController.themeController.isDark.value
                  ? context.theme.scaffoldBackgroundColor
                  : kOrangeColor,
              iconColor: BaseController.themeController.isDark.value
                  ? kLightTextSecondaryColor
                  : kWhiteColor,
            ),
            CustomThemeSwitcherButton(
              icon: "assets/images/dark_mode.svg",
              backgroundColor: BaseController.themeController.isDark.value
                  ? kOrangeColor
                  : context.theme.scaffoldBackgroundColor,
              iconColor: BaseController.themeController.isDark.value
                  ? kWhiteColor
                  : kLightTextSecondaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
