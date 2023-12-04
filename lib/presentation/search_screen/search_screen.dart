import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/widgets/app_bar/appbar_image.dart';
import 'package:shoes_app/widgets/app_bar/appbar_title.dart';
import 'package:shoes_app/widgets/app_bar/custom_app_bar.dart';
import 'package:shoes_app/widgets/custom_text_form_field.dart';

import '../search_screen/widgets/search_item_widget.dart';
import 'controller/search_controller.dart' as search;
import 'models/search_item_model.dart';

class SearchScreen extends GetWidget<search.SearchController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray100,
            body: Container(
                width: double.maxFinite,
                child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                      width: double.maxFinite,
                      child: Container(
                          padding: getPadding(top: 16, bottom: 16),
                          decoration: AppDecoration.white,
                          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                            CustomAppBar(height: getVerticalSize(66), leadingWidth: 44, leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleftBlack900, margin: getMargin(left: 20, top: 17, bottom: 25), onTap: onTapArrowleft), title: AppbarTitle(text: "lbl_serach".tr, margin: getMargin(left: 16, bottom: 24, top: 16))),
                            Padding(
                                padding: getPadding(left: 20, right: 20),
                                child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [
                                  Expanded(
                                      child: CustomTextFormField(
                                          focusNode: FocusNode(),
                                          controller: controller.groupFiftySixController,
                                          hintText: "msg_search_for_shoes".tr,
                                          variant: TextFormFieldVariant.White,
                                          padding: TextFormFieldPadding.PaddingT13_2,
                                          textInputAction: TextInputAction.done,
                                          prefix: Container(margin: getMargin(left: 16, top: 12, right: 16, bottom: 12), child: CustomImageView(svgPath: ImageConstant.imgContrast)),
                                          prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(48)))),
                                  Padding(
                                      padding: getPadding(
                                        left: 16,
                                      ),
                                      child: Text("lbl_cancel".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15Red500))
                                ]))
                          ]))),
                  Container(
                      width: double.maxFinite,
                      child: Container(
                          margin: getMargin(top: 10),
                          padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                          decoration: AppDecoration.white,
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [
                            Padding(padding: getPadding(top: 1), child: Text("lbl_recently_search".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline)),
                            Padding(
                                padding: getPadding(top: 15),
                                child: Obx(() => ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(height: getVerticalSize(16));
                                    },
                                    itemCount: controller.searchModelObj.value.searchItemList.length,
                                    itemBuilder: (context, index) {
                                      SearchItemModel model = controller.searchModelObj.value.searchItemList[index];
                                      return SearchItemWidget(model);
                                    }))),
                            Align(alignment: Alignment.center, child: Padding(padding: getPadding(top: 24), child: Text("lbl_clear_all".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900)))
                          ]))),
                  Container(
                      width: double.maxFinite,
                      child: Container(
                          margin: getMargin(top: 10),
                          padding: getPadding(left: 18, top: 16, right: 18, bottom: 16),
                          decoration: AppDecoration.white,
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [
                            Padding(padding: getPadding(left: 2, top: 1), child: Text("msg_popular_products".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline)),
                            Padding(
                                padding: getPadding(top: 15, right: 20),
                                child: Row(children: [
                                  Card(
                                      clipBehavior: Clip.antiAlias,
                                      elevation: 0,
                                      margin: EdgeInsets.all(0),
                                      color: ColorConstant.gray100,
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder8),
                                      child: Container(
                                          height: getSize(90),
                                          width: getSize(90),
                                          padding: getPadding(left: 7, top: 5, right: 7, bottom: 5),
                                          decoration: AppDecoration.fillGray100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                                          child: Stack(children: [CustomImageView(imagePath: ImageConstant.imgPngegg1, height: getVerticalSize(79), width: getHorizontalSize(76), alignment: Alignment.center)]))),
                                  Container(
                                      width: getHorizontalSize(70),
                                      margin: getMargin(left: 16, top: 22, bottom: 21),
                                      child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [Text("lbl_campus".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline), Padding(padding: getPadding(top: 3), child: Text("lbl_10_00".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900))])),
                                  Spacer(),
                                  CustomImageView(svgPath: ImageConstant.imgStar, height: getSize(15), width: getSize(15), margin: getMargin(top: 38, bottom: 37))
                                ]))
                          ]))),
                  Container(
                      width: double.maxFinite,
                      margin: getMargin(top: 10),
                      padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                      decoration: AppDecoration.white,
                      child: Row(children: [
                        Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: EdgeInsets.all(0),
                            color: ColorConstant.gray100,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder8),
                            child: Container(
                                height: getSize(90),
                                width: getSize(90),
                                padding: getPadding(left: 7, top: 5, right: 7, bottom: 5),
                                decoration: AppDecoration.fillGray100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                                child: Stack(children: [CustomImageView(imagePath: ImageConstant.imgPngegg1167x163, height: getVerticalSize(79), width: getHorizontalSize(76), alignment: Alignment.center)]))),
                        Container(
                            width: getHorizontalSize(74),
                            margin: getMargin(left: 16, top: 21, bottom: 21),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [Text("lbl_centrino".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline), Padding(padding: getPadding(top: 5), child: Text("lbl_32_00".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900))])),
                        Spacer(),
                        CustomImageView(svgPath: ImageConstant.imgStar, height: getSize(15), width: getSize(15), margin: getMargin(top: 38, right: 16, bottom: 37))
                      ])),
                  Spacer(),
                  Padding(padding: getPadding(bottom: 14), child: SizedBox(width: getHorizontalSize(135), child: Divider(thickness: getVerticalSize(5), color: ColorConstant.black900)))
                ]))));
  }

  onTapArrowleft() {
    Get.back();
  }
}
