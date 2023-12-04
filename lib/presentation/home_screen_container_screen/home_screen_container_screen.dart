import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/cart_screen/cart_screen.dart';
import 'package:shoes_app/presentation/categories_screen/categories_screen.dart';
import 'package:shoes_app/presentation/home_screen_page/home_screen_page.dart';
import 'package:shoes_app/presentation/my_favorite_page/my_favorite_page.dart';
import 'package:shoes_app/presentation/my_profile_page/my_profile_page.dart';
import 'package:shoes_app/widgets/custom_bottom_bar.dart';

import 'controller/home_screen_container_controller.dart';

// ignore: must_be_immutable
class HomeScreenContainerScreen extends GetWidget<HomeScreenContainerController> {
  final controller = Get.find<HomeScreenContainerController>();

  Future<bool> _requestPop() {
    // ignore: unrelated_type_equality_checks
    if (controller.selectedIndex != 0) {
      controller.change(0);
    } else {
      SystemNavigator.pop();
    }
    return new Future.value(false);
  }

  List<Widget> bottomViewList = [HomeScreenPage(), CategoriesScreen(), CartScreen(), MyFavoritePage(), MyProfilePage()];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _requestPop,
      child: SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              // body: Navigator(
              //     key: Get.nestedKey(1),
              //     initialRoute: AppRoutes.homeScreenPage,
              //     onGenerateRoute: (routeSetting) => GetPageRoute(
              //         page: () => getCurrentPage(routeSetting.name!),
              //         transition: Transition.noTransition)),
              body: GetBuilder<HomeScreenContainerController>(
                init: HomeScreenContainerController(),
                builder: (controller) {
                  return bottomViewList[controller.selectedIndex.value];
                },
              ),
              bottomNavigationBar: CustomBottomBar())),
    );
  }

// String getCurrentRoute(BottomBarEnum type) {
//   switch (type) {
//     case BottomBarEnum.Folder:
//       return AppRoutes.homeScreenPage;
//     case BottomBarEnum.Category:
//       return AppRoutes.categoriesScreen;
//     case BottomBarEnum.Lock:
//       return AppRoutes.cartScreen;
//     case BottomBarEnum.Favoritegray600:
//       return AppRoutes.myFavoritePage;
//     case BottomBarEnum.User:
//       return AppRoutes.myProfilePage;
//     default:
//       return "/";
//   }
// }
//
// Widget getCurrentPage(String currentRoute) {
//   switch (currentRoute) {
//     case AppRoutes.homeScreenPage:
//       return HomeScreenPage();
//     case AppRoutes.categoriesScreen:
//       return CategoriesScreen();
//     case AppRoutes.cartScreen:
//       return CartScreen();
//     case AppRoutes.myFavoritePage:
//       return MyFavoritePage();
//
//     case AppRoutes.myProfilePage:
//       return MyProfilePage();
//     default:
//       return DefaultWidget();
//   }
// }
}
