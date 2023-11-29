/*
Author: XamDesign
Date: 6.06.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/ui/views/notification/components/notification_app_bar.dart';
import 'package:xam_shoes_app/ui/views/notification/components/notification_body.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: NotificationAppBar(),
      body: NotificationBody(),
    );
  }
}
