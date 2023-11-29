/*
Author: XamDesign
Date: 29.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';
import 'package:xam_shoes_app/core/widgets/custom_drawer/components/custom_drawer_page_list.dart';
import 'package:xam_shoes_app/core/widgets/custom_drawer/components/custom_drawer_profile_info.dart';
import 'package:xam_shoes_app/core/widgets/custom_drawer/components/custom_drawer_sign_out_button.dart';
import 'package:xam_shoes_app/core/widgets/custom_drawer/components/custom_drawer_top_section.dart';

class CustomDrawer extends BaseStatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: context.theme.scaffoldBackgroundColor,
      child: const SafeArea(
        child: Column(
          children: [
            CustomDrawerTopSection(),
            CustomDrawerProfileInfo(),
            Expanded(flex: 7, child: CustomDrawerPageList()),
            Expanded(flex: 3, child: CustomDrawerSignOutButton()),
          ],
        ),
      ),
    );
  }
}
