/*
Author: XamDesign
Date: 22.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:xam_shoes_app/ui/views/reset_password/reset_password_screen.dart';
import 'package:xam_shoes_app/ui/views/forgot_password/components/forgot_password_email_field.dart';
import 'package:xam_shoes_app/ui/views/forgot_password/components/forgot_password_send_email_button.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({
    super.key,
  });

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const ForgotPasswordEmailField(),
          ForgotPasswordSendEmailButton(
            onTap: () {
              if (_formKey.currentState!.validate()) {
                Get.to(
                  () => const ResetPasswordScreen(),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
