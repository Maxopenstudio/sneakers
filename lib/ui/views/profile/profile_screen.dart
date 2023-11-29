/*
Author: XamDesign
Date: 25.05.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/ui/views/profile/components/profile_app_bar.dart';
import 'package:xam_shoes_app/ui/views/profile/components/profile_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ProfileAppBar(),
      body: ProfileBody(),
    );
  }
}
