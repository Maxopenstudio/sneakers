/*
Author: XamDesign
Date: 7.06.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';

class ChatMessageAvatar extends StatelessWidget {
  final String image;
  final bool hasColor;

  const ChatMessageAvatar({
    required this.image,
    super.key,
    this.hasColor = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48.0,
      height: 48.0,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: BaseController.themeController.isDark.value
            ? kDarkFieldColor
            : kLightFieldColor,
      ),
      child: SvgPicture.asset(
        image,
        colorFilter: !hasColor
            ? ColorFilter.mode(
                BaseController.themeController.isDark.value
                    ? kDarkTextColor
                    : kLightTextPrimaryColor,
                BlendMode.srcIn,
              )
            : null,
      ),
    );
  }
}
