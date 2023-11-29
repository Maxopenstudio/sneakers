import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';

class HomeCarousel extends StatelessWidget {
  const HomeCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
        vertical: DeviceUtils.getDynamicWidth(context, 0.04),
      ),
      child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 16 / 9,
          viewportFraction: 1,
          initialPage: 0,
          enlargeCenterPage: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
        ),
        items: [
          "assets/images/adidas_campaign.jpeg",
          "assets/images/nike_campaign.jpg",
          "assets/images/puma_campaign.jpeg"
        ]
            .map((e) => ClipRRect(
                  borderRadius: BorderRadius.circular(24.0),
                  child: Image.asset(
                    e,
                    width: DeviceUtils.getWidth(context),
                    height: DeviceUtils.getDynamicHeight(context, 0.2),
                    fit: BoxFit.fitWidth,
                  ),
                ))
            .toList(),
      ),
    );
  }
}
