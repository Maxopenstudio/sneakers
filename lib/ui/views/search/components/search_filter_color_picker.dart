/*
Author: XamDesign
Date: 3.06.2023
*/

import 'package:flutter/material.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/widgets/custom_color_picker.dart';

class SearchFilterColorPicker extends StatelessWidget {
  const SearchFilterColorPicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: BarColorPicker(
        width: 300,
        thumbColor: Colors.white,
        cornerRadius: 10,
        pickMode: PickMode.color,
        colorListener: (int value) =>
            BaseController.searchShoeController.changeFilterColor(Color(value)),
      ),
    );
  }
}
