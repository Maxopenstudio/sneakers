/*
Author: XamDesign
Date: 5.06.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/core/widgets/sign_in_with_google_button.dart';
import 'package:xam_shoes_app/ui/views/sign_in/components/sign_in_form.dart';
import 'package:xam_shoes_app/ui/views/sign_in/components/sign_in_welcome.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({
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
            SignInWelcome(),
            SignInWithGoogleButton(),
            SignInForm(),
          ],
        ),
      ),
    );
  }
}
