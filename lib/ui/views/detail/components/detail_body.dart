/*
Author: XamDesign
Date: 30.05.2023
*/

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:xam_shoes_app/core/models/shoe_model.dart';
import 'package:xam_shoes_app/ui/views/detail/components/detail_info.dart';
import 'package:xam_shoes_app/ui/views/detail/components/detail_properties.dart';
import 'package:xam_shoes_app/ui/views/detail/components/detail_shoe_image.dart';

class DetailBody extends StatelessWidget {
  final Shoe shoe;

  const DetailBody({
    required this.shoe,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailShoeImage(shoe: shoe),
          FadeInUp(
              from: 5,
              duration: const Duration(milliseconds: 400),
              child: DetailInfo(model: shoe.model, colors: shoe.colors)),
          FadeInUp(
              from: 10,
              duration: const Duration(milliseconds: 600),
              child: DetailProperties(shoe: shoe)),
        ],
      ),
    );
  }
}
