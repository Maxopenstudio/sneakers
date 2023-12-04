import 'dart:ui';

import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray600 = fromHex('#797979');

  static Color black9007f = fromHex('#7f000000');

  static Color black900A0 = fromHex('#a0000000');

  static Color deepOrange50 = fromHex('#f7e9e9');

  static Color green100 = fromHex('#cdebd2');

  static Color gray60001 = fromHex('#7e7e7e');

  static Color blueGray50 = fromHex('#ebecef');

  static Color red500 = fromHex('#ff3939');

  static Color green800 = fromHex('#078d1c');

  static Color gray300 = fromHex('#e3e3e3');

  static Color gray100 = fromHex('#f4f4f4');

  static Color black90000 = fromHex('#00000000');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color gray10001 = fromHex('#f6f6f6');

  static Color whiteA700 = fromHex('#ffffff');

  static Color shadowColor = fromHex("#17000000");

  static Color green10001 = fromHex('#cdecd2');

  static Color redColor = fromHex("#F23838");

  static Color yellowColor = fromHex("#F8B101");

  static Color darkGreyColor = fromHex("#474F54");

  static Color purpleColor = fromHex("#541B36");

  static Color greyColor = fromHex("#7A7A7A");

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
