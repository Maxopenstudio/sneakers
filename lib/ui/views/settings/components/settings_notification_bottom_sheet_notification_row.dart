/*
Author: XamDesign
Date: 13.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/core/widgets/custom_bottom_sheet/custom_bottom_sheet_subtitle.dart';

class SettingsNotificationBottomSheetNotificationRow extends StatefulWidget {
  const SettingsNotificationBottomSheetNotificationRow({
    super.key,
  });

  @override
  State<SettingsNotificationBottomSheetNotificationRow> createState() =>
      _SettingsNotificationBottomSheetNotificationRowState();
}

class _SettingsNotificationBottomSheetNotificationRowState
    extends State<SettingsNotificationBottomSheetNotificationRow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomBottomSheetSubtitle(title: TranslationKeys.notification.tr),
          Obx(
            () => Switch(
              value:
                  BaseController.settingsController.isNotificationEnabled.value,
              onChanged: (val) => BaseController.settingsController
                  .setIsNotificationEnabled(val),
            ),
          ),
        ],
      ),
    );
  }
}
