/*
Author: XamDesign
Date: 22.05.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/ui/views/reset_password/components/reset_password_app_bar.dart';
import 'package:xam_shoes_app/ui/views/reset_password/components/reset_password_body.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ResetPasswordAppBar(),
      body: ResetPasswordBody(),
    );
  }
}
