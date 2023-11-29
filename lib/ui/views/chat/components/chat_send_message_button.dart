/*
Author: XamDesign
Date: 7.06.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';

class ChatSendMessageButton extends StatelessWidget {
  const ChatSendMessageButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => BaseController.messageController.sendMessage(),
      style: IconButton.styleFrom(
        backgroundColor: kLightBlueColor,
        shape: const CircleBorder(),
      ),
      icon: SvgPicture.asset("assets/images/send_message.svg"),
    );
  }
}
