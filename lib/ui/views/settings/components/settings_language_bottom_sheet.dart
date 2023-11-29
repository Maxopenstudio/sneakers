/*
Author: XamDesign
Date: 13.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/widgets/custom_bottom_sheet/custom_bottom_sheet.dart';
import 'package:xam_shoes_app/ui/views/settings/components/settings_bottom_sheet_apply_button.dart';
import 'package:xam_shoes_app/ui/views/settings/components/settings_language_bottom_sheet_language_row.dart';

class SettingsLanguageBottomSheet extends StatefulWidget {
  const SettingsLanguageBottomSheet({
    super.key,
  });

  @override
  State<SettingsLanguageBottomSheet> createState() =>
      _SettingsLanguageBottomSheetState();
}

class _SettingsLanguageBottomSheetState
    extends State<SettingsLanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return CustomBottomSheet(
      title: TranslationKeys.changeLanguage.tr.toUpperCase(),
      content: Column(
        children: [
          const SettingsLanguageBottomSheetLanguageRow(),
          const SizedBox(height: 8.0),
          SettingsBottomSheetApplyButton(onTap: () => Get.back()),
        ],
      ),
    );
  }
}
