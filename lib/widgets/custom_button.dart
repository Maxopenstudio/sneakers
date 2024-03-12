import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({this.shape, this.padding, this.variant, this.fontStyle, this.alignment, this.margin, this.onTap, this.width, this.height, this.text, this.prefixWidget, this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    Color? color = _setColor();
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: onTap != null ? color : (color?.withOpacity(0.5) ?? null),
      side: _setTextButtonBorder(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll6:
        return getPadding(
          all: 6,
        );
      case ButtonPadding.PaddingAll15:
        return getPadding(
          all: 15,
        );
      case ButtonPadding.PaddingAll3:
        return getPadding(
          all: 3,
        );
      default:
        return getPadding(
          all: 12,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.White:
        return ColorConstant.whiteA700;
      case ButtonVariant.FillGreen100:
        return ColorConstant.green100;
      case ButtonVariant.FillGreen10001:
        return ColorConstant.green10001;
      case ButtonVariant.FillDeeporange50:
        return ColorConstant.deepOrange50;
      case ButtonVariant.OutlineBlack900:
        return null;
      default:
        return ColorConstant.black900;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineBlack900:
        return BorderSide(
          color: ColorConstant.black900,
          width: getHorizontalSize(
            1.00,
          ),
        );
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.SFUITextSemibold14:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'SF UI Text',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.21,
          ),
        );
      case ButtonFontStyle.SFUITextSemibold14WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'SF UI Text',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.21,
          ),
        );
      case ButtonFontStyle.SFUITextRegular15:
        return TextStyle(
          color: ColorConstant.green800,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'SF UI Text',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.20,
          ),
        );
      case ButtonFontStyle.SFUITextRegular15Red500:
        return TextStyle(
          color: ColorConstant.red500,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'SF UI Text',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.20,
          ),
        );
      case ButtonFontStyle.SFUITextSemibold18Black900:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'SF UI Text',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.22,
          ),
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'SF UI Text',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.22,
          ),
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder8,
}

enum ButtonPadding {
  PaddingAll12,
  PaddingAll6,
  PaddingAll15,
  PaddingAll3,
}

enum ButtonVariant {
  Black,
  White,
  OutlineBlack900,
  FillGreen100,
  FillGreen10001,
  FillDeeporange50,
}

enum ButtonFontStyle {
  SFUITextSemibold18,
  SFUITextSemibold14,
  SFUITextSemibold14WhiteA700,
  SFUITextRegular15,
  SFUITextRegular15Red500,
  SFUITextSemibold18Black900,
}
