/*
Author: XamDesign
Date: 3.06.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: always_use_package_imports
import '../../../../core/utils/base/base_stateless.dart';

class OrderSuccessfulIcon extends BaseStatelessWidget {
  const OrderSuccessfulIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset("assets/images/order_successful_icon.svg");
  }
}
