/*
Author: XamDesign
Date: 3.06.2023
*/

import 'package:flutter/material.dart';
import 'package:xam_shoes_app/ui/views/change_address/components/change_address_app_bar.dart';
import 'package:xam_shoes_app/ui/views/change_address/components/change_address_body.dart';
import 'package:xam_shoes_app/ui/views/change_address/components/change_address_change_now_button.dart';

class ChangeAddressScreen extends StatelessWidget {
  const ChangeAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ChangeAddressAppBar(),
      body: ChangeAddressBody(),
      floatingActionButton: ChangeAddressChangeNowButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
