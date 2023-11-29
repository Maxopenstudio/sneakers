/*
Author: XamDesign
Date: 26.05.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/core/widgets/custom_bottom_sheet/custom_bottom_sheet_title.dart';

class CustomBottomSheet extends StatefulWidget {
  final String title;
  final Widget content;

  const CustomBottomSheet({
    required this.title,
    required this.content,
    super.key,
  });

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0),
        child: Column(
          children: [
            CustomBottomSheetTitle(title: widget.title),
            widget.content,
          ],
        ),
      ),
    );
  }
}
