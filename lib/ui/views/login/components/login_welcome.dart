/*
Author: XamDesign
Date: 22.05.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/ui/views/login/components/login_description.dart';
import 'package:xam_shoes_app/ui/views/login/components/login_title.dart';

class LoginWelcome extends StatelessWidget {
  const LoginWelcome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LoginTitle(),
        LoginDescription(),
      ],
    );
  }
}
