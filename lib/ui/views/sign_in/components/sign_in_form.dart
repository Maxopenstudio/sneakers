/*
Author: XamDesign
Date: 22.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:xam_shoes_app/ui/views/navigation/navigation_screen.dart';
import 'package:xam_shoes_app/ui/views/sign_in/components/sign_in_email_field.dart';
import 'package:xam_shoes_app/ui/views/sign_in/components/sign_in_password_field.dart';
import 'package:xam_shoes_app/ui/views/sign_in/components/sign_in_sign_in_button.dart';
import 'package:xam_shoes_app/ui/views/sign_in/components/sign_in_username_field.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({
    super.key,
  });

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const SignInUsernameField(),
          const SignInEmailField(),
          const SignInPasswordField(),
          SignInSignInButton(
            onTap: () {
              if (_formKey.currentState!.validate()) {
                Get.to(() => const NavigationScreen());
              }
            },
          ),
        ],
      ),
    );
  }
}
