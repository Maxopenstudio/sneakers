/*
Author: XamDesign
Date: 29.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';

class DetailColorItem extends StatelessWidget {
  final Color color;

  const DetailColorItem({required this.color, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
          () =>
          GestureDetector(
            onTap: () {
              BaseController.detailController.changeColor(color);
            },
            child: Container(
              width: 32,
              height: 32,
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              padding: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 2,
                  color:
                  BaseController.detailController.selectedColor.value == color
                      ? color
                      : Theme
                      .of(context)
                      .scaffoldBackgroundColor,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color,
                  border: Border.all(
                    width: 1,
                    color: color,
                  ),
                ),
              ),
            ),
          ),
    );
  }
}
