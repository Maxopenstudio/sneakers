/*
Author: XamDesign
Date: 22.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/utils/base/base_statefull.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/core/widgets/custom_drawer/custom_drawer.dart';
import 'package:xam_shoes_app/ui/views/cart/cart_screen.dart';
import 'package:xam_shoes_app/ui/views/discover/discover_screen.dart';
import 'package:xam_shoes_app/ui/views/home/home_screen.dart';
import 'package:xam_shoes_app/ui/views/message/message_screen.dart';
import 'package:xam_shoes_app/ui/views/profile/profile_screen.dart';
import 'package:xam_shoes_app/ui/views/navigation/components/navigation_bottom_bar.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends BaseState<NavigationScreen> {
  final List<Widget> _pageList = [
    const HomeScreen(),
    const DiscoverScreen(),
    const CartScreen(),
    const MessageScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: BaseController.navigationController.navigationScaffoldKey,
      drawer: const CustomDrawer(),
      body: Obx(
        () => SizedBox(
          height: DeviceUtils.getHeight(context),
          child: _pageList[
              BaseController.navigationController.selectedIndex.value],
        ),
      ),
      bottomNavigationBar: const NavigationBottomBar(),
      extendBody: true,
    );
  }
}
