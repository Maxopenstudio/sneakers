/*
Author: XamDesign
Date: 7.06.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatAttachmentButton extends StatelessWidget {
  const ChatAttachmentButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: SvgPicture.asset("assets/images/attachment.svg"),
    );
  }
}
