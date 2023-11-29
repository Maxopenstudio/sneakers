/*
Author: XamDesign
Date: 5.06.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/core/widgets/sign_in_with_google_button.dart';
import 'package:xam_shoes_app/ui/views/login/components/login_form.dart';
import 'package:xam_shoes_app/ui/views/login/components/login_sign_in_button.dart';
import 'package:xam_shoes_app/ui/views/login/components/login_welcome.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
          vertical: 16.0,
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LoginWelcome(),
            SignInWithGoogleButton(),
            LoginForm(),
            Center(child: LoginSignInButton()),
          ],
        ),
      ),
    );
  }
}
