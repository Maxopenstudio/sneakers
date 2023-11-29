/*
Author: XamDesign
Date: 30.05.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/ui/views/change_address/components/change_address_form.dart';
import 'package:xam_shoes_app/ui/views/change_address/components/change_address_title.dart';

class ChangeAddressBody extends StatelessWidget {
  const ChangeAddressBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ChangeAddressTitle(),
          ChangeAddressForm(),
        ],
      ),
    );
  }
}
