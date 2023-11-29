// ignore_for_file: avoid_field_initializers_in_const_classes

import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';

class CustomAppBar extends BaseStatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color? titleColor;
  final Widget? leading;
  final Widget? trailing;
  final bool isTransparent;

  @override
  final Size preferredSize;

  const CustomAppBar({
    required this.title,
    super.key,
    this.titleColor,
    this.leading,
    this.trailing,
    this.isTransparent = false,
  }) : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) => AppBar(
        backgroundColor: isTransparent
            ? Colors.transparent
            : context.theme.scaffoldBackgroundColor,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: leading ?? const SizedBox.shrink(),
        ),
        title: Text(
          title,
          style: context.textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: titleColor,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: trailing ?? const SizedBox.shrink(),
          ),
        ],
        elevation: 0,
      );
}
