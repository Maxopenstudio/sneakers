import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/home_screen_container_screen/controller/home_screen_container_controller.dart';

// ignore: must_be_immutable
class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({this.onChanged});

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgFolder,
      type: BottomBarEnum.Folder,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgCategoryGray,
      type: BottomBarEnum.Category,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgLock,
      type: BottomBarEnum.Lock,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFavoriteGray600,
      type: BottomBarEnum.Favoritegray600,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUser,
      type: BottomBarEnum.User,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenContainerController>(
      init: HomeScreenContainerController(),
      builder: (controller) => Container(
        height: getVerticalSize(66),
        decoration: BoxDecoration(color: ColorConstant.whiteA700, boxShadow: [BoxShadow(color: ColorConstant.shadowColor, offset: Offset(0, 4), blurRadius: 16)]),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          currentIndex: controller.selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: CustomImageView(
                svgPath: bottomMenuList[index].icon,
                height: getSize(
                  24,
                ),
                width: getSize(
                  24,
                ),
                color: ColorConstant.gray600,
              ),
              activeIcon: CustomImageView(
                svgPath: bottomMenuList[index].icon,
                height: getSize(
                  24,
                ),
                width: getSize(
                  24,
                ),
                color: ColorConstant.black900,
              ),
              label: '',
            );
          }),
          onTap: (index) {
            controller.change(index);
            // onChanged!(bottomMenuList[controller.selectedIndex.value].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Folder,
  Category,
  Lock,
  Favoritegray600,
  User,
}

class BottomMenuModel {
  BottomMenuModel({required this.icon, required this.type});

  String icon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
