import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:shoes_app/presentation/language_settings_page/controller/language_settings_controller.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/pref_utils.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../home_screen_container_screen/controller/home_screen_container_controller.dart';

class LanguageSettingsPage extends GetWidget<LanguageSettingsController> {
  final Map<String, Locale> languages = {
    "English": Locale('en', 'US'),
    "Українська": Locale('uk', 'UA')
  };

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConstant.gray100,
      resizeToAvoidBottomInset: true,
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
                onTap: onTapArrowleft14),
          ),
          title: AppbarTitle(
              text: "lbl_app_launguage".tr, margin: getMargin(left: 16)),
          styleType: Style.bgFillWhiteA700),
      body: Container(
          width: double.maxFinite,
          padding: getPadding(top: 10, bottom: 10),
          child: ListView.builder(
              padding: EdgeInsets.all(0),
              itemCount: languages.length,
              itemBuilder: (context, index) {
                String languageName = languages.keys.toList()[index];
                Locale locales = languages.values.toList()[index];
                return GestureDetector(
                  onTap: () async {
                    var locale = await PrefUtils.onChangeLanguage(locales);
                    Get.updateLocale(locale!);
                  },
                  child: Container(
                      width: double.maxFinite,
                      margin: getMargin(top: 1),
                      padding:
                          getPadding(left: 20, top: 16, right: 20, bottom: 16),
                      decoration: AppDecoration.white,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding:
                                    getPadding(left: 15, top: 4, bottom: 1),
                                child: Text(languageName,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtSFUITextRegular15Black900)),
                            Spacer(),
                          ])),
                );
              })),
    ));
  }

  onTapArrowleft14() {
    Get.back();
  }
}
