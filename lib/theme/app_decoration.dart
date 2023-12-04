import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fillGreen100 => BoxDecoration(
        color: ColorConstant.green100,
      );

  static BoxDecoration get fillGray10001 => BoxDecoration(
        color: ColorConstant.gray10001,
      );

  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );

  static BoxDecoration get txtFillGray10001 => BoxDecoration(
        color: ColorConstant.gray10001,
      );

  static BoxDecoration get gradientBlack900a0Black90000 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.02,
            0.95,
          ),
          end: Alignment(
            1.01,
            0.21,
          ),
          colors: [
            ColorConstant.black900A0,
            ColorConstant.black90000,
          ],
        ),
      );

  static BoxDecoration get black => BoxDecoration(
        color: ColorConstant.black900,
      );

  static BoxDecoration get txtFillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );

  static BoxDecoration get txtFillBluegray50 => BoxDecoration(
        color: ColorConstant.blueGray50,
      );

  static BoxDecoration get white => BoxDecoration(
        color: ColorConstant.whiteA700,
      );

  static BoxDecoration get txtBlack => BoxDecoration(
        color: ColorConstant.black900,
        border: Border.all(
          color: ColorConstant.black900,
          width: getHorizontalSize(
            1,
          ),
        ),
      );

  static BoxDecoration get outlineBlack9001 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.black900,
          width: getHorizontalSize(
            1,
          ),
        ),
      );

  static BoxDecoration get txtWhite => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.blueGray50,
          width: getHorizontalSize(
            1,
          ),
        ),
      );

  static BoxDecoration get txtFillBlack900 => BoxDecoration(
        color: ColorConstant.black900,
      );

  static BoxDecoration get txtOutlineBluegray50 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.blueGray50,
          width: getHorizontalSize(
            1,
          ),
        ),
      );

  static BoxDecoration get fillGray100 => BoxDecoration(
        color: ColorConstant.gray100,
      );

  static BoxDecoration get outlineBluegray50 => BoxDecoration(
        color: ColorConstant.blueGray50,
        border: Border.all(
          color: ColorConstant.blueGray50,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8,
    ),
  );

  static BorderRadius circleBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12,
    ),
  );

  static BorderRadius roundedBorder36 = BorderRadius.circular(
    getHorizontalSize(
      36,
    ),
  );

  static BorderRadius circleBorder40 = BorderRadius.circular(
    getHorizontalSize(
      40,
    ),
  );

  static BorderRadius roundedBorder22 = BorderRadius.circular(
    getHorizontalSize(
      22,
    ),
  );

  static BorderRadius customBorderBL8 = BorderRadius.only(
    bottomLeft: Radius.circular(
      getHorizontalSize(
        8,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        8,
      ),
    ),
  );

  static BorderRadius customBorderTL8 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        8,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        8,
      ),
    ),
  );

  static BorderRadius txtRoundedBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8,
    ),
  );

  static BorderRadius customBorderTL36 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        36,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        36,
      ),
    ),
  );

  static BorderRadius txtCircleBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12,
    ),
  );

  static BorderRadius circleBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16,
    ),
  );
}
