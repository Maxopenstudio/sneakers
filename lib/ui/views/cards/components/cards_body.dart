/*
Author: XamDesign
Date: 8.06.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';
import 'package:xam_shoes_app/ui/views/cards/components/cards_card_info.dart';
import 'package:xam_shoes_app/ui/views/cards/components/cards_card_list.dart';
import 'package:xam_shoes_app/ui/views/cards/components/cards_form.dart';

class CardsBody extends BaseStatelessWidget {
  const CardsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CardsCardList(),
          CardsCardInfo(),
          CardsForm(),
        ],
      ),
    );
  }
}
