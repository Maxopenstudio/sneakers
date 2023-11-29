/*
Author: XamDesign
Date: 29.05.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';
import 'package:xam_shoes_app/ui/views/login/login_screen.dart';

class CustomDrawerSignOutButton extends BaseStatelessWidget {
  const CustomDrawerSignOutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: TextButton(
        onPressed: () {
          Get.offAll(() => const LoginScreen());
          BaseController.homeController.reset();
          BaseController.navigationController.reset();
        },
        child: Row(
          children: [
            SvgPicture.asset("assets/images/sign_out_arrow.svg"),
            const SizedBox(width: 16.0),
            Text(
              TranslationKeys.signOut.tr,
              style: context.textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
