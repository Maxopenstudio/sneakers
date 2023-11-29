/*
Author: XamDesign
Date: 22.05.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/constants/theme_constants.dart';
import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/utils/base/base_statefull.dart';

class CustomMultilineTextField extends StatefulWidget {
  final TextEditingController? controller;
  final String hintText;
  final bool obscureText;
  final int maxLines;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final void Function(String)? onChanged;
  final String Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;

  const CustomMultilineTextField({
    required this.hintText,
    super.key,
    this.controller,
    this.obscureText = false,
    this.maxLines = 1,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.onChanged,
    this.validator,
    this.inputFormatters,
  });

  @override
  State<CustomMultilineTextField> createState() =>
      _CustomMultilineTextFieldState();
}

class _CustomMultilineTextFieldState
    extends BaseState<CustomMultilineTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        enabled: true,
        hintText: widget.hintText,
        border: customOutlineInputBorder(
          color: BaseController.themeController.isDark.value
              ? kDarkFieldColor
              : kLightFieldColor,
          borderRadius: 24.0,
        ),
        enabledBorder: customOutlineInputBorder(
          color: BaseController.themeController.isDark.value
              ? kDarkFieldColor
              : kLightFieldColor,
          borderRadius: 24.0,
        ),
        focusedBorder: customOutlineInputBorder(
          color: BaseController.themeController.isDark.value
              ? kDarkFieldColor
              : kLightFieldColor,
          borderRadius: 24.0,
        ),
        errorBorder: customOutlineInputBorder(
          color: kRedColor,
          borderRadius: 24.0,
        ),
      ),
      maxLines: widget.maxLines,
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      inputFormatters: widget.inputFormatters,
      onChanged: widget.onChanged,
      validator: widget.validator ??
          (val) {
            if (val!.isEmpty) {
              return TranslationKeys.fieldCantBeEmpty.tr;
            }
            return null;
          },
    );
  }
}
