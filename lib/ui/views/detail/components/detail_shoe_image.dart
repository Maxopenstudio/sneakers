/*
Author: XamDesign
Date: 30.05.2023
*/

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:xam_shoes_app/core/models/shoe_model.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/ui/views/detail/components/detail_interactive_shoe_image.dart';

class DetailShoeImage extends StatelessWidget {
  final Shoe shoe;

  const DetailShoeImage({
    required this.shoe,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) =>
              DetailInteractiveShoeImage(image: shoe.images.first),
        );
      },
      child: shoe.images.length > 1
          ? CarouselSlider(
              options: CarouselOptions(
                height: DeviceUtils.getDynamicHeight(context, 0.3),
                aspectRatio: 16 / 9,
                viewportFraction: 0.9,
                initialPage: 0,
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
              ),
              items: shoe.images.map((image) {
                return Image.asset(
                  image,
                  fit: BoxFit.fitWidth,
                );
              }).toList(),
            )
          : Hero(
              tag: shoe.id,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Image.asset(
                  shoe.images.first,
                  width: DeviceUtils.getWidth(context),
                  height: DeviceUtils.getDynamicHeight(context, 0.3),
                ),
              ),
            ),
    );
  }
}
