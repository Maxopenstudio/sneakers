import 'package:flutter/material.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T>
    with WidgetsBindingObserver {
  double dynamicHeight(double value) =>
      MediaQuery.of(context).size.height * value;

  double dynamicWidth(double value) =>
      MediaQuery.of(context).size.width * value;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // print("_connectivitySubscription");
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  SizedBox spaceHeight(double height) => SizedBox(height: height);

  SizedBox spaceWidth(double width) => SizedBox(width: width);
}
