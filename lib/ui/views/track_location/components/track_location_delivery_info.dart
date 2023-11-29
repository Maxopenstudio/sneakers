/*
Author: XamDesign
Date: 6.06.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:get/get_utils/get_utils.dart';

class TrackLocationDeliveryInfo extends StatelessWidget {
  const TrackLocationDeliveryInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Image.asset("assets/images/profile_picture.png"),
          ),
          const SizedBox(width: 16.0),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Albert Oriza",
                  style: context.textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Delivery Man",
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: kLightTextSecondaryColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 48.0,
              child: IconButton(
                onPressed: () {},
                style: IconButton.styleFrom(
                  backgroundColor: kLightBlueColor,
                  shape: const CircleBorder(),
                ),
                icon: SvgPicture.asset("assets/images/call.svg"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
