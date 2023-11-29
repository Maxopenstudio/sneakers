/*
Author: XamDesign
Date: 10.06.2023
*/

import 'package:flutter/material.dart';
import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/ui/views/chat/components/chat_attachment_button.dart';
import 'package:xam_shoes_app/ui/views/chat/components/chat_send_message_button.dart';
import 'package:xam_shoes_app/ui/views/chat/components/chat_write_message_field.dart';
import 'package:get/get_utils/get_utils.dart';

class ChatBottomBar extends BaseStatelessWidget {
  const ChatBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: DeviceUtils.getWidth(context),
      padding: EdgeInsets.symmetric(
        horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
        vertical: 8.0,
      ),
      color: context.theme.scaffoldBackgroundColor,
      child: const Row(
        children: [
          Expanded(flex: 5, child: ChatWriteMessageField()),
          Expanded(child: ChatAttachmentButton()),
          Expanded(child: ChatSendMessageButton()),
        ],
      ),
    );
  }
}
