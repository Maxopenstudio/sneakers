/*
Author: XamDesign
Date: 7.06.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/models/order_supplier_model.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/ui/views/chat/chat_screen.dart';

class MessageChatItem extends StatelessWidget {
  final OrderSupplier sender;
  final String lastMessage;
  final int newMessageCount;
  final bool senderIconHasColor;

  const MessageChatItem({
    required this.sender,
    required this.lastMessage,
    required this.newMessageCount,
    super.key,
    this.senderIconHasColor = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => ChatScreen(title: sender.name)),
      child: Container(
        width: DeviceUtils.getWidth(context),
        margin: const EdgeInsets.symmetric(vertical: 4.0),
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: DeviceUtils.getDynamicWidth(context, 0.08),
                height: DeviceUtils.getDynamicHeight(context, 0.08),
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: BaseController.themeController.isDark.value
                      ? kDarkFieldColor
                      : kLightFieldColor,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(
                  sender.logo,
                  colorFilter: !senderIconHasColor
                      ? ColorFilter.mode(
                          BaseController.themeController.isDark.value
                              ? kDarkTextColor
                              : kLightTextPrimaryColor,
                          BlendMode.srcIn,
                        )
                      : null,
                ),
              ),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sender.name,
                    style: context.textTheme.labelLarge,
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    lastMessage,
                    style: context.textTheme.bodyLarge?.copyWith(
                      color: kLightTextSecondaryColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.centerRight,
                child: newMessageCount > 0
                    ? Container(
                        width: 24.0,
                        height: 24.0,
                        decoration: const BoxDecoration(
                          color: kRedColor,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            newMessageCount.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: kWhiteColor,
                                ),
                          ),
                        ),
                      )
                    : Text(
                        "Yesterday",
                        style: context.textTheme.bodyMedium?.copyWith(
                          color: kLightTextSecondaryColor,
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
