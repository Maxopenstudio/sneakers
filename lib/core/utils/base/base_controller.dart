import 'package:get/get.dart';

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

class BaseController {
  static final HomeController homeController = Get.find<HomeController>();
  static final AuthController authController = Get.find<AuthController>();
  static final NavigationController navigationController =
      Get.find<NavigationController>();
  static final ThemeController themeController = Get.find<ThemeController>();
  static final DetailController detailController = Get.find<DetailController>();
  static final CategoriesController categoriesController =
      Get.find<CategoriesController>();
  static final SearchShoeController searchShoeController =
      Get.find<SearchShoeController>();
  static final CartController cartController = Get.find<CartController>();
  static final CardsController cardsController = Get.find<CardsController>();
  static final ReviewController reviewController = Get.find<ReviewController>();
  static final MessageController messageController =
      Get.find<MessageController>();
  static final SettingsController settingsController =
      Get.find<SettingsController>();
  static final TrackLocationController trackLocationController =
      Get.find<TrackLocationController>();
}
