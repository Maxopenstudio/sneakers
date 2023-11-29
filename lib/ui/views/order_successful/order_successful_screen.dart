/*
Author: XamDesign
Date: 3.06.2023
*/

import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xam_shoes_app/core/utils/base/base_statefull.dart';
import 'package:xam_shoes_app/ui/views/order_successful/components/order_successful_body.dart';
import 'package:xam_shoes_app/ui/views/order_successful/components/order_successful_go_home_button.dart';

class OrderSuccessfulScreen extends StatefulWidget {
  const OrderSuccessfulScreen({Key? key}) : super(key: key);

  @override
  State<OrderSuccessfulScreen> createState() => _OrderSuccessfulScreenState();
}

class _OrderSuccessfulScreenState extends BaseState<OrderSuccessfulScreen> {
  @override
  void initState() {
    //   HapticFeedback for
    if (Platform.isIOS) celebrate();
    super.initState();
  }

  void celebrate() {
    const vibrationPattern = <int>[100, 200, 100, 200, 100, 200];
    var currentIndex = 0;

    Timer.periodic(Duration(milliseconds: vibrationPattern[currentIndex]),
        (timer) {
      HapticFeedback.mediumImpact();
      currentIndex++;
      if (currentIndex >= vibrationPattern.length) {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OrderSuccessfulBody(),
      floatingActionButton: OrderSuccessfulGoHomeButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
