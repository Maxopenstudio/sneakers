/*
Author: XamDesign
Date: 30.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/ui/views/account/account_screen.dart';
import 'package:xam_shoes_app/ui/views/change_address/change_address_screen.dart';
import 'package:xam_shoes_app/ui/views/change_password/change_password_screen.dart';
import 'package:xam_shoes_app/ui/views/settings/components/settings_delete_account_button.dart';
import 'package:xam_shoes_app/ui/views/settings/components/settings_language_bottom_sheet.dart';
import 'package:xam_shoes_app/ui/views/settings/components/settings_notification_bottom_sheet.dart';
import 'package:xam_shoes_app/ui/views/settings/components/settings_option_button.dart';

class SettingsBody extends StatelessWidget {
  const SettingsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: DeviceUtils.getHeight(context),
      padding: EdgeInsets.all(
        DeviceUtils.getDynamicWidth(context, 0.07),
      ),
      child: ListView(
        children: [
          SettingsOptionButton(
            title: TranslationKeys.changeLanguage.tr,
            onTap: () =>
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) => const SettingsLanguageBottomSheet(),
                ),
          ),
          SettingsOptionButton(
            title: TranslationKeys.generalSettings.tr,
          ),
          SettingsOptionButton(
            title: TranslationKeys.accountSettings.tr,
            page: const AccountScreen(),
          ),
          SettingsOptionButton(
            title: TranslationKeys.changePassword.tr,
            page: const ChangePasswordScreen(),
          ),
          SettingsOptionButton(
            title: TranslationKeys.changeAddress.tr,
            page: const ChangeAddressScreen(),
          ),
          SettingsOptionButton(
            title: TranslationKeys.notification.tr,
            onTap: () =>
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) => const SettingsNotificationBottomSheet(),
                ),
          ),
          SettingsOptionButton(
            title: TranslationKeys.aboutUs.tr,
          ),
          SettingsOptionButton(
            title: TranslationKeys.privacyPolicy.tr,
          ),
          const SettingsDeleteAccountButton(),
        ],
      ),
    );
  }
}
