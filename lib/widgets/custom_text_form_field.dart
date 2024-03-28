import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoes_app/core/app_export.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatefulWidget {
  CustomTextFormField({this.shape,
    this.padding,
    this.variant,
    this.fontStyle,
    this.alignment,
    this.width,
    this.margin,
    this.controller,
    this.focusNode,
    this.isObscureText = false,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.validator,
    this.onTap,
    this.enabled = true,
    this.inputFormatters,
    this.onEditingComplete,
    this.errorText});

  TextFormFieldShape? shape;

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? isObscureText;

  bool enabled;

  TextInputAction? textInputAction;

  TextInputType? textInputType;

  int? maxLines;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  VoidCallback? onTap;

  List<TextInputFormatter>? inputFormatters;

  String? errorText;

  void Function()? onEditingComplete;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return widget.alignment != null
        ? Align(
      alignment: widget.alignment ?? Alignment.center,
      child: _buildTextFormFieldWidget(),
    )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: widget.width ?? double.maxFinite,
      margin: widget.margin,
      child: TextFormField(
        enabled: widget.enabled,
        inputFormatters: widget.inputFormatters,
        onTap: widget.onTap,
        controller: widget.controller,
        focusNode: widget.focusNode,
        style: _setFontStyle(TextFormFieldFontStyle.SFUITextRegular17),
        obscureText: widget.isObscureText!,
        textInputAction: widget.textInputAction,
        keyboardType: widget.textInputType,
        maxLines: widget.maxLines ?? 1,
        decoration: _buildDecoration().copyWith(errorText: widget.errorText),
        validator: widget.validator,
        onEditingComplete: widget.onEditingComplete,
      ),
    );
  }

  InputDecoration _buildDecoration() {
    return InputDecoration(
        errorMaxLines: 2,
        hintText: widget.hintText ?? "",
        hintStyle: _setFontStyle(TextFormFieldFontStyle.Body),
        border: _setBorderStyle(),
        enabledBorder: _setBorderStyle(),
        focusedBorder: setFocusedBorder(),
        disabledBorder: _setBorderStyle(),
        focusedErrorBorder: _setBorderStyle(),
        errorBorder: _setBorderStyle(),
        prefixIcon: widget.prefix,
        prefixIconConstraints: widget.prefixConstraints,
        suffixIcon: widget.suffix,
        suffixIconConstraints: widget.suffixConstraints,
        fillColor: _setFillColor(),
        filled: _setFilled(),
        isDense: true,
        contentPadding: _setPadding(),
        errorStyle: setErrorStyle());
  }

  setErrorStyle() {
    return TextStyle(
      color: ColorConstant.red500,
      fontSize: getFontSize(
        13,
      ),
      fontFamily: 'SF UI Text',
      fontWeight: FontWeight.w400,
      height: getVerticalSize(
        1.24,
      ),
    );
  }

  _setFontStyle(TextFormFieldFontStyle? fontStyle) {
    switch (fontStyle) {
      case TextFormFieldFontStyle.SFUITextRegular17:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'SF UI Text',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.24,
          ),
        );
      case TextFormFieldFontStyle.SFUITextRegular15:
        return TextStyle(
          color: ColorConstant.gray600,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'SF UI Text',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.20,
          ),
        );
      default:
        return TextStyle(
          color: ColorConstant.gray600,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'SF UI Text',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.24,
          ),
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (widget.shape) {
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        );
    }
  }

  setFocusedBorder() {
    return OutlineInputBorder(
      borderRadius: _setOutlineBorderRadius(),
      borderSide: BorderSide(
        color: ColorConstant.black900,
        width: 1,
      ),
    );
  }

  _setBorderStyle() {
    switch (widget.variant) {
      case TextFormFieldVariant.OutlineBlack900:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.black900,
            width: 1,
          ),
        );
      case TextFormFieldVariant.FillGray100:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.White:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.gray300,
            width: 1,
          ),
        );
      case TextFormFieldVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.blueGray50,
            width: 1,
          ),
        );
    }
  }

  _setFillColor() {
    switch (widget.variant) {
      case TextFormFieldVariant.OutlineBlack900:
        return ColorConstant.blueGray50;
      case TextFormFieldVariant.FillGray100:
        return ColorConstant.gray100;
      case TextFormFieldVariant.White:
        return ColorConstant.whiteA700;
      default:
        return ColorConstant.blueGray50;
    }
  }

  _setFilled() {
    switch (widget.variant) {
      case TextFormFieldVariant.OutlineBlack900:
        return true;
      case TextFormFieldVariant.FillGray100:
        return true;
      case TextFormFieldVariant.White:
        return true;
      case TextFormFieldVariant.None:
        return false;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (widget.padding) {
      case TextFormFieldPadding.PaddingT13_1:
        return getPadding(
          left: 13,
          top: 13,
          bottom: 13,
        );
      case TextFormFieldPadding.PaddingT10:
        return getPadding(
          left: 10,
          top: 10,
          bottom: 10,
        );
      case TextFormFieldPadding.PaddingT13_2:
        return getPadding(
          top: 13,
          right: 13,
          bottom: 13,
        );
      case TextFormFieldPadding.PaddingT9:
        return getPadding(
          left: 8,
          top: 9,
          right: 8,
          bottom: 9,
        );
      default:
        return getPadding(
          left: 12,
          top: 13,
          right: 12,
          bottom: 13,
        );
    }
  }
}

enum TextFormFieldShape {
  RoundedBorder8,
}

enum TextFormFieldPadding {
  PaddingT13,
  PaddingT13_1,
  PaddingT10,
  PaddingT13_2,
  PaddingT9,
}

enum TextFormFieldVariant {
  None,
  OutlineBluegray50,
  OutlineBlack900,
  FillGray100,
  White,
}

enum TextFormFieldFontStyle {
  Body,
  SFUITextRegular17,
  SFUITextRegular15,
}
