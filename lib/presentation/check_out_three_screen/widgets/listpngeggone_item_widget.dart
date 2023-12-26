import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/check_out_three_screen/models/check_out_three_model.dart';

import '../controller/check_out_three_controller.dart';

// // ignore: must_be_immutable
// class ListpngeggoneItemWidget extends StatelessWidget {
//   ListpngeggoneItemWidget(this.order);
//
//   Order order;
//   var controller = Get.find<CheckOutThreeController>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Row(
//           children: [
//             Card(
//               clipBehavior: Clip.antiAlias,
//               elevation: 0,
//               color: ColorConstant.gray100,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadiusStyle.roundedBorder8,
//               ),
//               child: Container(
//                 height: getSize(
//                   90,
//                 ),
//                 width: getSize(
//                   90,
//                 ),
//                 padding: getPadding(
//                   left: 5,
//                   top: 4,
//                   right: 5,
//                   bottom: 4,
//                 ),
//                 decoration: AppDecoration.fillGray100.copyWith(
//                   borderRadius: BorderRadiusStyle.roundedBorder8,
//                 ),
//                 child: CustomImageView(
//                   imagePath: ImageConstant.imgPngegg14,
//                   height: getVerticalSize(
//                     82,
//                   ),
//                   width: getHorizontalSize(
//                     80,
//                   ),
//                   alignment: Alignment.center,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: getPadding(top: 4, left: 16),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Text(
//                     "lbl_asian".tr,
//                     overflow: TextOverflow.ellipsis,
//                     textAlign: TextAlign.left,
//                     style: AppStyle.txtHeadline,
//                   ),
//                   Padding(
//                     padding: getPadding(
//                       top: 8,
//                     ),
//                     child: Row(
//                       children: [
//                         Padding(
//                           padding: getPadding(
//                             bottom: 1,
//                           ),
//                           child: Text(
//                             "lbl_21_00".tr,
//                             overflow: TextOverflow.ellipsis,
//                             textAlign: TextAlign.left,
//                             style: AppStyle.txtBodyBlack900,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     alignment: Alignment.center,
//                     height: getVerticalSize(
//                       26,
//                     ),
//                     width: getHorizontalSize(
//                       99,
//                     ),
//                     decoration: BoxDecoration(
//                         color: ColorConstant.green100,
//                         borderRadius:
//                             BorderRadius.circular(getHorizontalSize(8))),
//                     child: Text("lbl_delivered".tr,
//                         overflow: TextOverflow.ellipsis,
//                         textAlign: TextAlign.left,
//                         style: TextStyle(
//                           color: ColorConstant.green800,
//                           fontSize: getFontSize(
//                             15,
//                           ),
//                           fontFamily: 'SF UI Text',
//                           fontWeight: FontWeight.w400,
//                           height: getVerticalSize(
//                             1.20,
//                           ),
//                         )),
//                     margin: getMargin(
//                       top: 8,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//         Text(
//           "lbl_qty_12".tr,
//           overflow: TextOverflow.ellipsis,
//           textAlign: TextAlign.left,
//           style: AppStyle.txtBodyBlack900,
//         ),
//       ],
//     );
//   }
// }
