/*
Author: XamDesign
Date: 25.05.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';

class CustomThemeSwitcherButton extends BaseStatelessWidget {
  final String icon;
  final Color backgroundColor;
  final Color iconColor;

  const CustomThemeSwitcherButton({
    required this.icon,
    required this.backgroundColor,
    required this.iconColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2.0),
      padding: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(
        icon,
        colorFilter: ColorFilter.mode(
          iconColor,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
