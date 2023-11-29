import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:xam_shoes_app/core/constants/string_constants.dart';
import 'package:xam_shoes_app/core/constants/theme_constants.dart';
import 'package:xam_shoes_app/core/controllers/auth/auth_controller.dart';
import 'package:xam_shoes_app/core/controllers/cards/cards_controller.dart';
import 'package:xam_shoes_app/core/controllers/cart/cart_controller.dart';
import 'package:xam_shoes_app/core/controllers/categories/categories_controller.dart';
import 'package:xam_shoes_app/core/controllers/detail/detail_controller.dart';
import 'package:xam_shoes_app/core/controllers/home/home_controller.dart';
import 'package:xam_shoes_app/core/controllers/message/message_controller.dart';
import 'package:xam_shoes_app/core/controllers/navigation/navigation_controller.dart';
import 'package:xam_shoes_app/core/controllers/review/review_controller.dart';
import 'package:xam_shoes_app/core/controllers/search/search_shoe_controller.dart';
import 'package:xam_shoes_app/core/controllers/settings/settings_controller.dart';
import 'package:xam_shoes_app/core/controllers/theme/theme_controller.dart';
import 'package:xam_shoes_app/core/controllers/track_location/track_location_controller.dart';
import 'package:xam_shoes_app/core/translations/languages.dart';
import 'package:xam_shoes_app/ui/views/splash/splash_screen.dart';

void main() {
  Get
    ..put(AuthController())
    ..put(NavigationController())
    ..put(HomeController())
    ..put(ThemeController())
    ..put(DetailController())
    ..put(CategoriesController())
    ..put(SearchShoeController())
    ..put(CartController())
    ..put(CardsController())
    ..put(ReviewController())
    ..put(MessageController())
    ..put(SettingsController())
    ..put(TrackLocationController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: GetMaterialApp(
        title: appName,
        debugShowCheckedModeBanner: false,
        translations: Languages(),
        locale: Get.deviceLocale,
        fallbackLocale: const Locale("en", "US"),
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.light,
        home: const SplashScreen(),
      ),
    );
  }
}
