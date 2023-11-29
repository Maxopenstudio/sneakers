/*
Author: XamDesign
Date: 7.06.2023
*/

import 'package:flutter/material.dart';
import 'package:xam_shoes_app/core/models/message_model.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/ui/views/chat/components/chat_message_avatar.dart';
import 'package:xam_shoes_app/ui/views/chat/components/chat_message_tile.dart';

class ChatMessageRow extends StatelessWidget {
  final Message message;

  const ChatMessageRow({
    required this.message,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
        vertical: DeviceUtils.getDynamicHeight(context, 0.01),
      ),
      child: Column(
        children: [
          // ChatDateText(date: message.timestamp),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const ChatMessageAvatar(
                image: "assets/images/nike_logo.svg",
                hasColor: false,
              ),
              ChatMessageTile(
                image: "assets/images/shoe1.png",
                text: message.text,
                url: message.url,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
