/*
Author: XamDesign
Date: 12.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:xam_shoes_app/core/models/shoe_model.dart';
import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';
import 'package:xam_shoes_app/core/widgets/custom_submit_button.dart';
import 'package:xam_shoes_app/ui/views/review/review_screen.dart';

class TrackOrderReviewButton extends BaseStatelessWidget {
  final Shoe product;

  const TrackOrderReviewButton({
    required this.product,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomSubmitButton(
      title: "Review this product",
      onTap: () => Get.to(
        () => ReviewScreen(product: product),
      ),
    );
  }
}
