/*
Author: XamDesign
Date: 29.05.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';
import 'package:xam_shoes_app/core/widgets/custom_app_bar/custom_app_bar_back_button.dart';
import 'package:xam_shoes_app/core/widgets/custom_drawer/components/custom_drawer_title.dart';

class CustomDrawerTopSection extends BaseStatelessWidget {
  const CustomDrawerTopSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomAppBarBackButton(),
          CustomDrawerTitle(),
          SizedBox.shrink(),
        ],
      ),
    );
  }
}
