/*
Author: XamDesign
Date: 31.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';
import 'package:xam_shoes_app/core/widgets/custom_app_bar/custom_app_bar_button.dart';
import 'package:xam_shoes_app/ui/views/notification/notification_screen.dart';

class CustomAppBarNotificationButton extends BaseStatelessWidget {
  final bool isTransparent;
  final String? icon;
  final Function()? onPressed;

  const CustomAppBarNotificationButton({
    Key? key,
    this.isTransparent = true,
    this.onPressed,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16.0),
      child: CustomAppBarButton(
        icon: icon ?? "assets/images/notification_bell.svg",
        iconSize: 24.0,
        onPressed: onPressed ?? () => Get.to(() => const NotificationScreen()),
        isTransparent: isTransparent,
      ),
    );
  }
}
