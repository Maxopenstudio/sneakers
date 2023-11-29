/*
Author: XamDesign
Date: 22.05.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/ui/views/sign_in/components/sign_in_description.dart';
import 'package:xam_shoes_app/ui/views/sign_in/components/sign_in_title.dart';

class SignInWelcome extends StatelessWidget {
  const SignInWelcome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SignInTitle(),
        SignInDescription(),
      ],
    );
  }
}
