/*
Author: XamDesign
Date: 10.06.2023
*/

import 'package:get/get.dart';

import 'package:xam_shoes_app/core/models/message_model.dart';

RxList<Message> messageList = [
  Message(
    text:
        "Hello! We have noticed that there are some items left in your cart. Complete your order now.",
    url: "https://nike/shoe-shoe-suhduisf-distro-style-man-i.6983157.3985",
    image: "assets/image/shoe1.png",
    timestamp: DateTime(2023, 1, 1, 0, 0, 0),
    isSentByMe: false,
  ),
  Message(
    text: "Ok. I'll look for it!",
    timestamp: DateTime(2023, 1, 1, 0, 1, 1),
    isSentByMe: true,
  ),
].obs;
