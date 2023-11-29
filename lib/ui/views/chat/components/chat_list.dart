/*
Author: XamDesign
Date: 10.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sticky_grouped_list/sticky_grouped_list.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/data/message_list.dart';
import 'package:xam_shoes_app/core/models/message_model.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';
import 'package:xam_shoes_app/ui/views/chat/components/chat_date_text.dart';
import 'package:xam_shoes_app/ui/views/chat/components/chat_message_row.dart';
import 'package:xam_shoes_app/ui/views/chat/components/chat_own_message_tile.dart';

class ChatList extends BaseStatelessWidget {
  const ChatList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return StickyGroupedListView<Message, DateTime>(
        // ignore: invalid_use_of_protected_member
        elements: messageList.value,
        itemScrollController: BaseController.messageController.scrollController,
        groupBy: (Message element) => DateTime(
          element.timestamp.year,
          element.timestamp.month,
          element.timestamp.day,
        ),
        groupSeparatorBuilder: (Message element) =>
            ChatDateText(date: element.timestamp),

        itemBuilder: (context, Message element) {
          if (element.isSentByMe) {
            return ChatOwnMessageTile(message: element);
          } else {
            return ChatMessageRow(message: element);
          }
        },
        stickyHeaderBackgroundColor: BaseController.themeController.isDark.value
            ? kDarkFieldColor
            : kLightFieldColor,
        itemComparator: (e1, e2) => e1.timestamp.compareTo(e2.timestamp),
        // optional
        reverse: true,
        order: StickyGroupedListOrder.DESC,
      );
    });
  }
}
