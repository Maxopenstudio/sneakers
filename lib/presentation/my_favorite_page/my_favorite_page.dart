import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/widgets/app_bar/appbar_image.dart';
import 'package:shoes_app/widgets/app_bar/appbar_title.dart';
import 'package:shoes_app/widgets/app_bar/custom_app_bar.dart';

import '../home_screen_container_screen/controller/home_screen_container_controller.dart';
import '../my_favorite_page/widgets/myfavorite_item_widget.dart';
import 'controller/my_favorite_controller.dart';
import 'models/my_favorite_model.dart';
import 'models/myfavorite_item_model.dart';

// ignore_for_file: must_be_immutable
class MyFavoritePage extends StatelessWidget {
  MyFavoriteController controller = Get.put(MyFavoriteController(MyFavoriteModel().obs));

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
                title: AppbarTitle(text: "lbl_my_favorites".tr, margin: getMargin(left: 16)),
                styleType: Style.bgFillWhiteA700),
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillGray100,
                child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                      width: double.maxFinite,
                      child: Container(
                          margin: getMargin(top: 10),
                          padding: getPadding(left: 20, top: 5, right: 20, bottom: 5),
                          decoration: AppDecoration.white,
                          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                            Padding(
                                padding: getPadding(top: 11),
                                child: Obx(() => GridView.builder(
                                    shrinkWrap: true,
                                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: getVerticalSize(246), crossAxisCount: 2, mainAxisSpacing: getHorizontalSize(16), crossAxisSpacing: getHorizontalSize(16)),
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: controller.myFavoriteModelObj.value.myfavoriteItemList.length,
                                    itemBuilder: (context, index) {
                                      MyfavoriteItemModel model = controller.myFavoriteModelObj.value.myfavoriteItemList[index];
                                      return MyfavoriteItemWidget(model);
                                    })))
                          ]))),
                  Spacer()
                ]))));
  }

  onTapArrowleft13() {
    Get.back();
  }
}
