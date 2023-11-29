import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/data/shoe_list.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';

class ShoeItemImage extends StatefulWidget {
  final int index;

  const ShoeItemImage({required this.index, super.key});

  @override
  State<ShoeItemImage> createState() => _ShoeItemImageState();
}

class _ShoeItemImageState extends State<ShoeItemImage> {
  @override
  Widget build(BuildContext context) {
    return shoeList[widget.index].images.length > 1
        ? Column(
            children: [
              Flexible(
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 600.0,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.9,
                    initialPage: 0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                  ),
                  items: shoeList[widget.index].images.map((image) {
                    return Image.asset(
                      image,
                      fit: BoxFit.fitWidth,
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 14.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: shoeList[widget.index].images.map((entry) {
                    return Container(
                      width: 12.0,
                      height: 12.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 1.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: BaseController.themeController.isDark.value
                              ? kLightFieldColor
                              : kDarkFieldColor),
                    );
                  }).toList(),
                ),
              )
            ],
          )
        : Hero(
            tag: shoeList[widget.index].id,
            child: Center(
              child: Image.asset(
                shoeList[widget.index].images.first,
                height: DeviceUtils.getDynamicHeight(context, 0.12),
                width: DeviceUtils.getDynamicWidth(context, 0.28),
                fit: BoxFit.contain,
              ),
            ),
          );
  }
}
