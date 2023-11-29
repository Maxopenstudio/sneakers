/*
Author: XamDesign
Date: 22.05.2023
*/

import 'package:flutter/cupertino.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';

class CustomSubmitButton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;

  const CustomSubmitButton({
    required this.title,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "checkout_button",
      child: Container(
        width: DeviceUtils.getWidth(context),
        margin: const EdgeInsets.symmetric(vertical: 12.0),
        child: CupertinoButton(
          onPressed: onTap,
          color: kLightBlueColor,
          padding: const EdgeInsets.symmetric(vertical: 18.0),
          borderRadius: BorderRadius.circular(24.0),
          child: Text(
            title,
            style: context.textTheme.bodyLarge?.copyWith(
              color: kWhiteColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
