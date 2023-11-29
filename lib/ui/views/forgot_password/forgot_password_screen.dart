/*
Author: XamDesign
Date: 22.05.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/ui/views/forgot_password/components/forgot_password_app_bar.dart';
import 'package:xam_shoes_app/ui/views/forgot_password/components/forgot_password_body.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ForgotPasswordAppBar(),
      body: ForgotPasswordBody(),
    );
  }
}
