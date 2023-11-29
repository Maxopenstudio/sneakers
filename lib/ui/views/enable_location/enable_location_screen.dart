/*
Author: XamDesign
Date: 6.06.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';
import 'package:xam_shoes_app/ui/views/enable_location/components/enable_location_actions.dart';
import 'package:xam_shoes_app/ui/views/enable_location/components/enable_location_body.dart';

class EnableLocationScreen extends BaseStatelessWidget {
  const EnableLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EnableLocationBody(),
      floatingActionButton: EnableLocationActions(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
