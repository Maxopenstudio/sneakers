import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';

import 'controller/filter_controller.dart';

// ignore_for_file: must_be_immutable
class FilterBottomsheet extends StatelessWidget {
  FilterBottomsheet(this.controller);

  FilterController controller;

  final TextStyle selectedFilter = AppStyle.txtBodyBlack900.copyWith(fontWeight: FontWeight.bold);
  final TextStyle unselectedFilter = AppStyle.txtBodyBlack900;


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        child: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 146,
            top: 14,
            right: 146,
            bottom: 14,
          ),
          decoration: AppDecoration.white.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL36,
          ),
          child: StreamBuilder(
            stream: controller.filterMode.stream,
            builder: (context, snapshot) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 11,
                    ),
                    child: Text(
                      "lbl_sort_by".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtHeadline,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 23,
                    ),
                    child: GestureDetector(
                      onTap: () => controller.filterBy(FilterMode.newAdded),
                      child: Text(
                        "lbl_new_added".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: controller.filterMode.value == FilterMode.newAdded ? selectedFilter : unselectedFilter,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 26,
                    ),
                    child: GestureDetector(
                      onTap: () => controller.filterBy(FilterMode.priceHigh),
                      child: Text(
                        "lbl_price_high".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: controller.filterMode.value == FilterMode.priceHigh ? selectedFilter : unselectedFilter,
                      ),
                    ),
                  ),
                  Padding(
                      padding: getPadding(
                        top: 23,
                      ),
                      child: GestureDetector(
                        onTap: () => controller.filterBy(FilterMode.priceLow),
                        child: Text(
                          "lbl_price_low".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: controller.filterMode.value == FilterMode.priceLow ? selectedFilter : unselectedFilter,
                        ),
                      )
                  ),
                ],
              );
            }
          ),
        ),
      ),
    );
  }
}
