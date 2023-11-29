/*
Author: XamDesign
Date: 7.06.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/core/data/order_supplier_list.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/ui/views/message/components/message_chat_item.dart';
import 'package:xam_shoes_app/ui/views/message/components/message_chat_list_title.dart';

class MessageChatList extends StatelessWidget {
  const MessageChatList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MessageChatListTitle(),
          Expanded(
            child: ListView(
              children: [
                MessageChatItem(
                  sender: orderSupplierList[0],
                  senderIconHasColor: false,
                  lastMessage: "Your order has been placed!",
                  newMessageCount: 2,
                ),
                MessageChatItem(
                  sender: orderSupplierList[1],
                  senderIconHasColor: false,
                  lastMessage: "Thanks for ordering from us.",
                  newMessageCount: 0,
                ),
                MessageChatItem(
                  sender: orderSupplierList[2],
                  senderIconHasColor: false,
                  lastMessage: "Your order has been shipped!",
                  newMessageCount: 0,
                ),
                MessageChatItem(
                  sender: orderSupplierList[3],
                  senderIconHasColor: true,
                  lastMessage: "Your order has been preparing.",
                  newMessageCount: 2,
                ),
                MessageChatItem(
                  sender: orderSupplierList[4],
                  senderIconHasColor: true,
                  lastMessage: "Thanks for shopping!",
                  newMessageCount: 1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
