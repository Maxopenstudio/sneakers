/*
Author: XamDesign
Date: 30.05.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:xam_shoes_app/core/widgets/custom_app_bar/custom_app_bar_button.dart';
import 'package:xam_shoes_app/core/widgets/custom_theme_switcher/custom_theme_switcher.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: TranslationKeys.home.tr.toUpperCase(),
      leading: CustomAppBarButton(
        icon: "assets/images/drawer_menu.svg",
        onPressed: () {
          HapticFeedback.lightImpact();
          BaseController
              .navigationController.navigationScaffoldKey.currentState!
              .openDrawer();
        },
      ),
      trailing: const CustomThemeSwitcher(),
    );
  }
}
