import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/widgets/app_bar/appbar_image.dart';
import 'package:shoes_app/widgets/app_bar/appbar_title.dart';
import 'package:shoes_app/widgets/app_bar/custom_app_bar.dart';

import '../home_screen_container_screen/controller/home_screen_container_controller.dart';
import '../home_screen_page/controller/home_screen_controller.dart';
import '../home_screen_page/models/home_screen_model.dart';
import 'controller/categories_controller.dart';
import 'models/categories_item_model.dart';

class CategoriesScreen extends GetWidget<CategoriesController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(58),
                leadingWidth: 44,
                leading: GetBuilder<HomeScreenContainerController>(
                  init: HomeScreenContainerController(),
                  builder: (controller) => AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgArrowleftBlack900,
                      margin: getMargin(left: 20, top: 17, bottom: 17),
                      onTap: () {
                        controller.change(0);
                      }),
                ),
                title: AppbarTitle(text: "lbl_category".tr, margin: getMargin(left: 16)),
                actions: [AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgContrast, margin: getMargin(left: 20, top: 17, right: 20, bottom: 17))],
                styleType: Style.bgFillWhiteA700),
            body: SizedBox(
                width: size.width,
                child: Padding(
                    padding: getPadding(top: 10),
                    child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Container(
                        width: double.maxFinite,
                        padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                        decoration: AppDecoration.white,
                        child: GetBuilder<HomeScreenController>(
                          builder: (controller) => Container(
                            height: getVerticalSize(40),
                            child: ListView.separated(
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  width: getVerticalSize(24),
                                );
                              },
                              scrollDirection: Axis.horizontal,
                              itemCount: controller.homeScreenModelObj.value.categoryList.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    controller.setCategory(index);
                                  },
                                  child: Container(
                                    height: getVerticalSize(40),
                                    alignment: Alignment.center,
                                    padding: getPadding(
                                      left: 24,
                                      right: 24,
                                    ),
                                    // ignore: unrelated_type_equality_checks
                                    decoration: controller.categoryIndex == index
                                        ? AppDecoration.txtBlack.copyWith(
                                            borderRadius: BorderRadiusStyle.txtRoundedBorder8,
                                          )
                                        : AppDecoration.txtWhite.copyWith(
                                            borderRadius: BorderRadiusStyle.txtRoundedBorder8,
                                          ),
                                    child: Text(
                                      controller.homeScreenModelObj.value.categoryList[index],
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          // ignore: unrelated_type_equality_checks
                                          controller.categoryIndex == index ? AppStyle.txtBodyWhiteA700 : AppStyle.txtBodyBlack900,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListView(
                          primary: false,
                          shrinkWrap: true,
                          children: [
                            Container(
                                width: double.maxFinite,
                                child: Container(
                                    margin: getMargin(top: 10),
                                    decoration: AppDecoration.white,
                                    child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.img691,
                                        height: getVerticalSize(200),
                                        width: getHorizontalSize(428),
                                        fit: BoxFit.fill,
                                      )
                                    ]))),
                            GetBuilder<CategoriesController>(
                              init: CategoriesController(),
                              builder: (controller) => ListView.separated(
                                  padding: getPadding(top: 10),
                                  primary: false,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    CategoriesItemModel model = controller.categoriesModelObj.value.categoryItemList[index];
                                    return Container(
                                      width: double.maxFinite,
                                      margin: getMargin(top: 1),
                                      padding: getPadding(left: 20, top: 10, right: 20, bottom: 10),
                                      decoration: AppDecoration.white,
                                      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                        Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin: EdgeInsets.all(0),
                                            color: ColorConstant.gray100,
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder8),
                                            child: Container(
                                                height: getSize(60),
                                                width: getSize(60),
                                                padding: getPadding(left: 4, top: 10, right: 4, bottom: 10),
                                                decoration: AppDecoration.fillGray100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                                                child: CustomImageView(imagePath: ImageConstant.imagePath + model.image, height: getVerticalSize(40), width: getHorizontalSize(52), alignment: Alignment.center))),
                                        Padding(padding: getPadding(left: 16, top: 20, bottom: 18), child: Text(model.name, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline)),
                                        Spacer(),
                                        CustomImageView(svgPath: ImageConstant.imgArrowright, height: getSize(24), width: getSize(24), margin: getMargin(top: 18, bottom: 18))
                                      ]),
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                      height: getVerticalSize(1),
                                    );
                                  },
                                  itemCount: controller.categoriesModelObj.value.categoryItemList.length),
                            ),
                          ],
                        ),
                      )
                    ])))));
  }

  onTapArrowleft9() {
    Get.back();
  }
}
