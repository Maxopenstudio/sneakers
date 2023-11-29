/*
Author: XamDesign
Date: 9.06.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';
import 'package:xam_shoes_app/ui/views/add_card/components/add_card_form.dart';

class AddCardBody extends BaseStatelessWidget {
  const AddCardBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: AddCardForm(),
    );
  }
}
