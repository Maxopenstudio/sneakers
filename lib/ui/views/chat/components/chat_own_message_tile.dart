/*
Author: XamDesign
Date: 7.06.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/models/message_model.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:get/get_utils/get_utils.dart';

class ChatOwnMessageTile extends StatelessWidget {
  final Message message;

  const ChatOwnMessageTile({
    required this.message,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //ChatDateText(date: message.timestamp),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            margin: EdgeInsets.only(
              right: DeviceUtils.getDynamicWidth(context, 0.07),
              bottom: 16.0,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 24.0,
            ),
            decoration: const BoxDecoration(
              color: kLightBlueColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24.0),
                topRight: Radius.circular(24.0),
                bottomLeft: Radius.circular(24.0),
              ),
            ),
            width: DeviceUtils.getDynamicWidth(context, 0.5),
            child: Column(
              children: [
                if (message.image.isNotEmpty) Image.asset(message.image),
                Text(
                  message.text,
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: kWhiteColor,
                  ),
                ),
                if (message.url.isNotEmpty)
                  Text(
                    message.url,
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: kBlueColor,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
