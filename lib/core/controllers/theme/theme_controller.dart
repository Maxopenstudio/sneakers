/*
Author: XamDesign
Date: 25.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  Rx<ThemeMode> theme = ThemeMode.light.obs;
  RxBool isDark = false.obs;

  void changeTheme(ThemeMode themeMode) {
    theme.value = themeMode;
    isDark.value = themeMode == ThemeMode.dark;
    Get.changeThemeMode(themeMode);
  }
}
