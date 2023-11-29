/*
Author: XamDesign
Date: 22.05.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';

class SignInWithGoogleButton extends BaseStatelessWidget {
  const SignInWithGoogleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 3,
            blurRadius: 20,
            offset: const Offset(0, 7), // changes position of shadow
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(
        vertical: DeviceUtils.getDynamicHeight(context, 0.02),
      ),
      height: DeviceUtils.getDynamicHeight(context, 0.06),
      padding: EdgeInsets.zero,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme
              .of(context)
              .scaffoldBackgroundColor,
          surfaceTintColor: Theme
              .of(context)
              .scaffoldBackgroundColor,
          padding: EdgeInsets.zero,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/images/google_logo.svg"),
            const SizedBox(width: 10),
            Text(
              TranslationKeys.continueWithGoogle.tr,
              style: context.textTheme.labelMedium,
            ),
          ],
        ),
      ),
    );
  }
}
