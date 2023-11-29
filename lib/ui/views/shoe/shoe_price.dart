import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/data/shoe_list.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';

class ShoePrice extends StatefulWidget {
  final int shoeIndex;

  const ShoePrice({required this.shoeIndex, super.key});

  @override
  State<ShoePrice> createState() => _ShoePriceState();
}

class _ShoePriceState extends State<ShoePrice> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  "${shoeList[widget.shoeIndex].model}",
                  style: context.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w300,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 1,
                ),
              ),
              if (shoeList[widget.shoeIndex].discountRate != null &&
                  shoeList[widget.shoeIndex].discountRate != 0)
                Container(
                  decoration: BoxDecoration(
                    color: kLightBlueColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  margin: const EdgeInsets.only(top: 4.0),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 4.0,
                  ),
                  child: Text(
                    "${shoeList[widget.shoeIndex].discountRate}%",
                    style: context.textTheme.labelSmall?.copyWith(
                      color: kWhiteColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (shoeList[widget.shoeIndex].discountRate != null &&
                  shoeList[widget.shoeIndex].discountRate != 0)
                Text(
                  "\$${(BaseController.homeController.calculateDiscount(shoeList[widget.shoeIndex].retailPrice, shoeList[widget.shoeIndex].discountRate!)).toStringAsFixed(2)}",
                  style: context.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              Text(
                "\$${shoeList[widget.shoeIndex].retailPrice}",
                style: context.textTheme.titleMedium?.copyWith(
                  fontWeight:
                      (shoeList[widget.shoeIndex].discountRate != null &&
                              shoeList[widget.shoeIndex].discountRate != 0)
                          ? FontWeight.w300
                          : FontWeight.w600,
                  decoration:
                      (shoeList[widget.shoeIndex].discountRate != null &&
                              shoeList[widget.shoeIndex].discountRate != 0)
                          ? TextDecoration.lineThrough
                          : null,
                  fontSize: (shoeList[widget.shoeIndex].discountRate != null &&
                          shoeList[widget.shoeIndex].discountRate != 0)
                      ? 14
                      : null,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
