/*
Author: XamDesign
Date: 26.05.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';

class CustomMaterialButton extends BaseStatelessWidget {
  final Color backgroundColor;
  final BorderRadius borderRadius;
  final VoidCallback onTap;
  final Widget child;

  const CustomMaterialButton({
    required this.backgroundColor,
    required this.borderRadius,
    required this.onTap,
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      borderRadius: borderRadius,
      child: InkResponse(
        onTap: onTap,
        containedInkWell: true,
        highlightShape: BoxShape.rectangle,
        borderRadius: borderRadius,
        child: child,
      ),
    );
  }
}
