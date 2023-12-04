/*
Author: XamDesign
Date: 29.05.2023
*/

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:xam_shoes_app/core/models/content/shoe_model.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/ui/views/detail/components/detail_add_to_cart_button.dart';
import 'package:xam_shoes_app/ui/views/detail/components/detail_app_bar.dart';
import 'package:xam_shoes_app/ui/views/detail/components/detail_body.dart';

class DetailScreen extends StatefulWidget {
  final Shoe shoe;

  const DetailScreen({required this.shoe, Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  void initState() {
    BaseController.detailController.changeColor(Colors.red);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DetailAppBar(),
      body: DetailBody(shoe: widget.shoe),
      floatingActionButton: SlideInRight(
        from: 10,
        duration: const Duration(milliseconds: 800),
        child: DetailAddToCartButton(
          shoeId: widget.shoe.id,
          retailPrice: widget.shoe.special == 0 ? widget.shoe.price_formated : widget.shoe.special_formated,
        ),
      ),
    );
  }
}
