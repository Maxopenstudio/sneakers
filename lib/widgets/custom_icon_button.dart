import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';

// ignore: must_be_immutable
class CustomIconButton extends StatelessWidget {
  CustomIconButton({this.shape, this.padding, this.variant, this.alignment, this.margin, this.width, this.height, this.child, this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? width;

  double? height;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    // return alignment != null
    //     ? Align(
    //         alignment: alignment ?? Alignment.center,
    //         child: _buildIconButtonWidget(),
    //       )
    //     :
    return _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Container(
        // alignment: Alignment.center,
        width: getSize(width ?? 0),
        height: getSize(height ?? 0),
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: child,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      borderRadius: _setBorderRadius(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll8:
        return getPadding(
          all: 8,
        );
      default:
        return getPadding(
          all: 4,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.FillBluegray50:
        return ColorConstant.blueGray50;
      case IconButtonVariant.FillGray100:
        return ColorConstant.gray100;
      default:
        return ColorConstant.whiteA700;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.RoundedBorder8:
        return BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
    }
  }
}

enum IconButtonShape {
  CircleBorder12,
  RoundedBorder8,
}

enum IconButtonPadding {
  PaddingAll4,
  PaddingAll8,
}

enum IconButtonVariant {
  White,
  FillBluegray50,
  FillGray100,
}
