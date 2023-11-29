/*
Author: XamDesign
Date: 3.06.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/widgets/custom_material_button.dart';
import 'package:xam_shoes_app/ui/views/change_address/change_address_screen.dart';

class CheckoutDeliveryAddressCardEditButton extends StatelessWidget {
  const CheckoutDeliveryAddressCardEditButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomMaterialButton(
      backgroundColor: context.theme.scaffoldBackgroundColor,
      borderRadius: BorderRadius.circular(24.0),
      onTap: () {
        Get.to(() => const ChangeAddressScreen());
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset(
          "assets/images/edit.svg",
          colorFilter: ColorFilter.mode(
            BaseController.themeController.isDark.value
                ? kWhiteColor
                : kLightTextPrimaryColor,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
