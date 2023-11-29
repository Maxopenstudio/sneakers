import 'package:flutter/material.dart';

import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';

class CustomStarRate extends BaseStatelessWidget {
  final double value;
  final double starSize;

  const CustomStarRate({
    Key? key,
    this.value = .0,
    this.starSize = 24.0,
  }) : super(key: key);

  Widget _buildStar(BuildContext context, int index) {
    Widget? icon;
    final size = starSize;
    final floorValue = value - value.floor();

    if (index >= value) {
      icon = StarShaderMask(
        iconData: Icons.star,
        stops: const [0],
        colors: const [kLightTextSecondaryColor],
        size: size,
      );
    } else if (index > value - 1) {
      icon = StarShaderMask(
        iconData: Icons.star,
        stops: [0, floorValue, floorValue],
        colors: const [kOrangeColor, kOrangeColor, kLightTextSecondaryColor],
        size: size,
      );
    } else {
      icon = StarShaderMask(
        iconData: Icons.star,
        stops: const [0],
        colors: const [kOrangeColor],
        size: size,
      );
    }
    return icon;
  }

  @override
  Widget build(BuildContext context) => Row(
        children: List.generate(
          5,
          (index) => _buildStar(context, index),
        ),
      );
}

class CustomSelectableStarRate extends BaseStatelessWidget {
  final int value;
  final double starSize;
  final void Function(int index)? onRatingChanged;

  const CustomSelectableStarRate({
    Key? key,
    this.value = 0,
    this.starSize = 24.0,
    this.onRatingChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        children: List.generate(
          5,
          (index) => GestureDetector(
            onTap:
                onRatingChanged == null ? null : () => onRatingChanged!(index),
            child: SizedBox(
              width: starSize,
              height: starSize,
              child: Icon(
                Icons.star,
                size: starSize,
                color: index <= value ? kOrangeColor : kLightTextSecondaryColor,
              ),
            ),
          ),
        ),
      );
}

class StarShaderMask extends BaseStatelessWidget {
  final IconData iconData;
  final List<double> stops;
  final List<Color> colors;
  final double size;

  const StarShaderMask({
    required this.iconData,
    required this.stops,
    required this.colors,
    required this.size,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcATop,
      shaderCallback: (Rect rect) => LinearGradient(
        stops: stops,
        colors: colors,
      ).createShader(rect),
      child: SizedBox(
        width: size,
        height: size,
        child: Icon(iconData, size: size),
      ),
    );
  }
}
