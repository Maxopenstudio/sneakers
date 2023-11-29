/*
Author: XamDesign
Date: 9.06.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/ui/views/profile/components/profile_email_text.dart';
import 'package:xam_shoes_app/ui/views/profile/components/profile_name_text.dart';
import 'package:xam_shoes_app/ui/views/profile/components/profile_phone_number_text.dart';

class ProfileForm extends StatefulWidget {
  const ProfileForm({
    super.key,
  });

  @override
  State<ProfileForm> createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: DeviceUtils.getDynamicHeight(context, 0.15),
      ),
      child: const Column(
        children: [
          ProfileNameText(),
          ProfileEmailText(),
          ProfilePhoneNumberText(),
        ],
      ),
    );
  }
}
