import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';

// ignore: must_be_immutable
class CustomRadioButton extends StatefulWidget {
  CustomRadioButton({this.fontStyle, this.alignment, this.onChange, this.isRightCheck = false, this.iconSize, this.value, this.groupValue, this.text, this.width, this.margin});

  RadioFontStyle? fontStyle;

  Alignment? alignment;

  Function(String)? onChange;

  bool? isRightCheck;

  double? iconSize;

  String? value;

  String? groupValue;

  String? text;

  double? width;

  EdgeInsetsGeometry? margin;

  @override
  State<CustomRadioButton> createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  @override
  Widget build(BuildContext context) {
    return widget.alignment != null
        ? Align(
            alignment: widget.alignment ?? Alignment.center,
            child: _buildRadioButtonWidget(),
          )
        : _buildRadioButtonWidget();
  }

  _buildRadioButtonWidget() {
    return GestureDetector(
      onTap: () {
        widget.onChange!(widget.value!);
      },
      child: Container(
        width: widget.width,
        margin: widget.margin ?? EdgeInsets.zero,
        child: widget.isRightCheck! ? getRightSideRadio() : getLeftSideRadio(),
      ),
    );
  }

  Widget getRightSideRadio() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: 8,
          ),
          child: getTextWidget(),
        ),
        getRadioWidget(),
      ],
    );
  }

  Widget getLeftSideRadio() {
    return Row(
      children: [
        getRadioWidget(),
        Padding(
          padding: EdgeInsets.only(
            left: 8,
          ),
          child: getTextWidget(),
        ),
      ],
    );
  }

  Widget getTextWidget() {
    return Text(
      widget.text ?? "",
      textAlign: TextAlign.center,
      style: _setFontStyle(),
    );
  }

  Widget getRadioWidget() {
    return SizedBox(
      height: widget.iconSize,
      width: widget.iconSize,
      child: Radio<String>(
        value: widget.value ?? "",
        groupValue: widget.groupValue,
        activeColor: ColorConstant.fromHex("#ff000000"),
        onChanged: (value) {
          widget.onChange!(value!);
        },
      ),
    );
  }

  _setFontStyle() {
    switch (widget.fontStyle) {
      default:
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
    }
  }
}

enum RadioFontStyle {
  SFUITextRegular17,
}
