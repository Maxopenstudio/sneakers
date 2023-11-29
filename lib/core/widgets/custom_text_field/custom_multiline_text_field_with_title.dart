/*
Author: XamDesign
Date: 23.05.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';
import 'package:xam_shoes_app/core/widgets/custom_text_field/custom_multiline_text_field.dart';

class CustomMultilineTextFieldWithTitle extends BaseStatelessWidget {
  final TextEditingController? controller;
  final String title;
  final String hintText;
  final bool obscureText;
  final int maxLines;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final void Function(String)? onChanged;
  final String Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;

  const CustomMultilineTextFieldWithTitle({
    required this.title,
    required this.hintText,
    Key? key,
    this.controller,
    this.obscureText = false,
    this.maxLines = 1,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.onChanged,
    this.validator,
    this.inputFormatters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.textTheme.titleSmall?.copyWith(
            color: kLightTextSecondaryColor,
            fontWeight: FontWeight.normal,
          ),
        ),
        const SizedBox(height: 8.0),
        CustomMultilineTextField(
          controller: controller,
          hintText: hintText,
          obscureText: obscureText,
          maxLines: maxLines,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          onChanged: onChanged,
          validator: validator,
          inputFormatters: inputFormatters,
        ),
      ],
    );
  }
}
