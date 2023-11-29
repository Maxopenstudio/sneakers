/*
Author: XamDesign
Date: 22.05.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';
import 'package:xam_shoes_app/core/widgets/custom_text_field/custom_text_field_icon.dart';

class CustomTextFieldWithIcon extends BaseStatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final bool obscureText;
  final String prefixIcon;
  final String suffixIcon;
  final Color? prefixIconColor;
  final Color? suffixIconColor;
  final VoidCallback? prefixIconOnTap;
  final VoidCallback? suffixIconOnTap;
  final int maxLines;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final void Function(String)? onChanged;
  final String Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;

  const CustomTextFieldWithIcon({
    required this.hintText,
    super.key,
    this.controller,
    this.obscureText = false,
    this.prefixIcon = "",
    this.suffixIcon = "",
    this.prefixIconColor,
    this.suffixIconColor,
    this.prefixIconOnTap,
    this.suffixIconOnTap,
    this.maxLines = 1,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.onChanged,
    this.validator,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      maxLines: maxLines,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      onChanged: onChanged,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        enabled: true,
        hintText: hintText,
        prefixIcon: CustomTextFieldIcon(
          icon: prefixIcon,
          iconColor: prefixIconColor,
          onTap: prefixIconOnTap,
        ),
        suffixIcon: CustomTextFieldIcon(
          icon: suffixIcon,
          iconColor: suffixIconColor,
          onTap: suffixIconOnTap,
        ),
      ),
      validator: validator ??
          (val) {
            if (val!.isEmpty) {
              return TranslationKeys.fieldCantBeEmpty.tr;
            }
            return null;
          },
    );
  }
}
