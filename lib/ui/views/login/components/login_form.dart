/*
Author: XamDesign
Date: 22.05.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/providers/api_service/api_service.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/ui/views/login/components/login_email_field.dart';
import 'package:xam_shoes_app/ui/views/login/components/login_login_button.dart';
import 'package:xam_shoes_app/ui/views/login/components/login_password_field.dart';
import 'package:xam_shoes_app/ui/views/login/components/login_remember_me_checkbox.dart';
import 'package:xam_shoes_app/ui/views/navigation/navigation_screen.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: BaseController.authController.formKey,
      child: Column(
        children: [
          const LoginEmailField(),
          const LoginPasswordField(),
          const LoginRememberMeCheckbox(),
          LoginLoginButton(
            onTap: () async {
              if (BaseController.authController.formKey.currentState!.validate()) {
                HapticFeedback.lightImpact();
                final service = await Get.find<ApiService>().init("123"); // TODO: Делать инит на момент авторизации / чтения авторизированного пользователя
                print("Session: ${service.session} | Merchant: ${service.merchantId}");
                Get.offAll(
                  () => const NavigationScreen(),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
