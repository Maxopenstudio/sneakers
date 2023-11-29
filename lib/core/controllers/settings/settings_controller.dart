/*
Author: XamDesign
Date: 8.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/data/language_list.dart';
import 'package:xam_shoes_app/core/models/language_model.dart';

class SettingsController extends GetxController {
  GlobalKey<FormState> changeAccountInfoFormKey = GlobalKey<FormState>();
  GlobalKey<FormState> changeAddressFormKey = GlobalKey<FormState>();
  GlobalKey<FormState> changePasswordFormKey = GlobalKey<FormState>();
  RxString oldAddress = "".obs;
  RxString newAddress = "".obs;
  RxString recentPassword = "".obs;
  RxString newPassword = "".obs;
  RxString confirmNewPassword = "".obs;
  Rx<Language> language = languageList.first.obs;
  RxBool isNotificationEnabled = false.obs;

  void setOldAddress(String address) {
    oldAddress.value = address;
  }

  void setNewAddress(String address) {
    newAddress.value = address;
  }

  void setRecentPassword(String password) {
    recentPassword.value = password;
  }

  void setNewPassword(String password) {
    newPassword.value = password;
  }

  void setConfirmNewPassword(String password) {
    confirmNewPassword.value = password;
  }

  bool validateChangePassword() {
    return newPassword.value == confirmNewPassword.value;
  }

  void changeLanguage(Language lang) {
    language.value = lang;
    Get.updateLocale(lang.locale);
  }

  void setIsNotificationEnabled(bool val) {
    isNotificationEnabled.value = val;
  }

  void reset() {
    oldAddress.value = "";
    newAddress.value = "";
    recentPassword.value = "";
    newPassword.value = "";
    confirmNewPassword.value = "";
  }
}
