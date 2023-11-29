/*
Author: XamDesign
Date: 1.06.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';

class CustomTextFieldIcon extends BaseStatelessWidget {
  final String icon;
  final Color? iconColor;
  final VoidCallback? onTap;

  const CustomTextFieldIcon({
    required this.icon,
    super.key,
    this.onTap,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return icon.isNotEmpty
        ? GestureDetector(
            onTap: onTap ?? () {},
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
              child: SvgPicture.asset(
                icon,
                width: 24,
                height: 24,
                colorFilter: ColorFilter.mode(
                  iconColor ?? Colors.black,
                  BlendMode.srcIn,
                ),
              ),
            ),
          )
        : const SizedBox.shrink();
  }
}
