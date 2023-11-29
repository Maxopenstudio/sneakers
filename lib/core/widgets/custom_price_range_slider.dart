/*
Author: XamDesign
Date: 27.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/utils/base/base_statefull.dart';

class CustomPriceRangeSlider extends StatefulWidget {
  final double rangeStartValue;
  final double rangeEndValue;
  final double currentStartValue;
  final double currentEndValue;

  const CustomPriceRangeSlider({
    required this.rangeStartValue,
    required this.rangeEndValue,
    required this.currentStartValue,
    required this.currentEndValue,
    Key? key,
  }) : super(key: key);

  @override
  State<CustomPriceRangeSlider> createState() => _CustomPriceRangeSliderState();
}

class _CustomPriceRangeSliderState extends BaseState<CustomPriceRangeSlider> {
  @override
  void initState() {
    BaseController.homeController.currentRangeValues.value = RangeValues(
      widget.currentStartValue,
      widget.currentEndValue,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  "\$ ${BaseController.homeController.currentRangeValues.value.start.toStringAsFixed(2)}"),
              Text(
                  "\$ ${BaseController.homeController.currentRangeValues.value.end.toStringAsFixed(2)}"),
            ],
          ),
          SliderTheme(
            data: SliderThemeData(
              rangeThumbShape: const CustomRangeShape(),
              trackHeight: 2,
              thumbColor: kLightBlueColor,
              activeTrackColor: kLightBlueColor,
              inactiveTrackColor: BaseController.themeController.isDark.value
                  ? kDarkFieldColor
                  : kLightTextSecondaryColor.withOpacity(0.5),
            ),
            child: RangeSlider(
              min: widget.rangeStartValue,
              max: widget.rangeEndValue,
              divisions: widget.rangeEndValue.toInt(),
              values: BaseController.homeController.currentRangeValues.value,
              onChanged: (RangeValues values) {
                BaseController.homeController.currentRangeValues.value = values;
              },
            ),
          ),
        ],
      );
    });
  }
}

class CustomRangeShape extends RangeSliderThumbShape {
  final double radius;
  final Color ringColor;

  const CustomRangeShape({
    Key? key,
    this.radius = 10.0,
    this.ringColor = kLightBlueColor,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(radius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required SliderThemeData sliderTheme,
    bool? isDiscrete,
    bool? isEnabled,
    bool? isOnTop,
    TextDirection? textDirection,
    Thumb? thumb,
    bool? isPressed,
  }) {
    final canvas = context.canvas;

    final fillPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final borderPaint = Paint()
      ..color = ringColor
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    canvas
      ..drawCircle(center, radius, fillPaint)
      ..drawCircle(center, radius, borderPaint);
  }
}
