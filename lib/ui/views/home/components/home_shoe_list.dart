/*
Author: XamDesign
Date: 24.05.2023
*/

import 'package:flutter/material.dart';
import 'package:xam_shoes_app/core/data/shoe_list.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/utils/base/base_statefull.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/ui/views/home/components/home_carousel.dart';
import 'package:xam_shoes_app/ui/views/shoe/shoe_item.dart';

class HomeShoeList extends StatefulWidget {
  const HomeShoeList({
    super.key,
  });

  @override
  State<HomeShoeList> createState() => _HomeShoeListState();
}

class _HomeShoeListState extends BaseState<HomeShoeList> {
  @override
  void initState() {
    // hide item when scroll down
    BaseController.homeController.shoeListController
        .addListener(BaseController.homeController.scrollListenerShoesList);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: BaseController.homeController.shoeListController,
      child: Column(
        children: [
          const HomeCarousel(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
            ),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 0,
                crossAxisSpacing: 15,
                childAspectRatio: DeviceUtils.getWidth(context) /
                    DeviceUtils.getDynamicHeight(context, 0.79),
              ),
              itemCount: shoeList.length,
              itemBuilder: (context, index) => ShoeItemView(index: index),
            ),
          ),
        ],
      ),
    );
  }
}
