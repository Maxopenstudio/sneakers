import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';

// ignore: must_be_immutable
class AppbarImage extends StatefulWidget {
  AppbarImage({required this.height, required this.width, this.imagePath, this.svgPath, this.margin, this.onTap});

  double height;

  double width;

  String? imagePath;

  String? svgPath;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  @override
  State<AppbarImage> createState() => _AppbarImageState();
}

class _AppbarImageState extends State<AppbarImage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Padding(
        padding: widget.margin ?? EdgeInsets.zero,
        child: CustomImageView(
          svgPath: widget.svgPath,
          imagePath: widget.imagePath,
          height: widget.height,
          width: widget.width,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
