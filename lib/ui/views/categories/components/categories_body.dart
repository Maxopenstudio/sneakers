/*
Author: XamDesign
Date: 30.05.2023
*/

import 'package:flutter/material.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/ui/views/categories/components/categories_category_list.dart';
import 'package:xam_shoes_app/ui/views/categories/components/categories_shoe_list.dart';
import 'package:xam_shoes_app/ui/views/categories/components/categories_title.dart';

class CategoriesBody extends StatelessWidget {
  const CategoriesBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: DeviceUtils.getHeight(context),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: CategoriesCategoryList()),
          CategoriesTitle(),
          Expanded(flex: 4, child: CategoriesShoeList()),
        ],
      ),
    );
  }
}
