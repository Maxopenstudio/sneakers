/*
Author: XamDesign
Date: 7.06.2023
*/

import 'package:flutter/material.dart';
import 'package:xam_shoes_app/ui/views/chat/components/chat_app_bar.dart';
import 'package:xam_shoes_app/ui/views/chat/components/chat_body.dart';

class ChatScreen extends StatelessWidget {
  final String title;

  const ChatScreen({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ChatAppBar(title: title),
      body: const SafeArea(top: false, child: ChatBody()),
    );
  }
}
