// ignore_for_file: prefer_final_locals

import 'dart:collection';

import 'package:flutter/material.dart';

class CustomTextStyle {
  static List<Shadow> outlinedText(
      {double strokeWidth = 1,
      Color strokeColor = Colors.black,
      int precision = 5}) {
    Set<Shadow> result = HashSet();
    for (var x = 1; x < strokeWidth + precision; x++) {
      for (var y = 1; y < strokeWidth + precision; y++) {
        final offsetX = x.toDouble();
        final offsetY = y.toDouble();
        result
          ..add(Shadow(
              offset: Offset(-strokeWidth / offsetX, -strokeWidth / offsetY),
              color: strokeColor))
          ..add(Shadow(
              offset: Offset(-strokeWidth / offsetX, strokeWidth / offsetY),
              color: strokeColor))
          ..add(Shadow(
              offset: Offset(strokeWidth / offsetX, -strokeWidth / offsetY),
              color: strokeColor))
          ..add(Shadow(
              offset: Offset(strokeWidth / offsetX, strokeWidth / offsetY),
              color: strokeColor));
      }
    }
    return result.toList();
  }
}
