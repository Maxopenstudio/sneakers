/*
Author: XamDesign
Date: 8.06.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';
import 'package:xam_shoes_app/ui/views/cards/components/cards_app_bar.dart';
import 'package:xam_shoes_app/ui/views/cards/components/cards_body.dart';

class CardsScreen extends BaseStatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CardsAppBar(),
      body: CardsBody(),
    );
  }
}
