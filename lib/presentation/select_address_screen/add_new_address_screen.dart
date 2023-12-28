import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/select_address_screen/models/select_address_model.dart';
import 'package:shoes_app/presentation/select_address_screen/widgets/address_drop_down_button.dart';
import 'package:shoes_app/widgets/app_bar/custom_app_bar.dart';
import 'package:shoes_app/widgets/custom_button.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/add_new_address_controller.dart';

class AddNewAddressesScreen extends GetWidget<AddNewAddressController> {
  static final GlobalKey<FormState> _newAddressformKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar(height: getVerticalSize(58), leadingWidth: 44, leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleftBlack900, margin: getMargin(left: 20, top: 17, bottom: 17), onTap: onTapArrowleft4), title: AppbarTitle(text: "add_new_address".tr, margin: getMargin(left: 16, top: 16, bottom: 16)), styleType: Style.bgFillWhiteA700),
        body: Form(
                key: _newAddressformKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 10,
                      decoration: BoxDecoration(color:ColorConstant.gray100),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          padding: getPadding(
                            left: 20,
                            right: 20,
                            bottom: 14,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                               Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(children: [
                                    CustomTextFormField(
                                      controller: controller.addressFirstname,
                                      hintText: "msg_enter_first_name".tr,
                                      margin: getMargin(
                                        top: 8,
                                      ),
                                      validator: (value) {
                                        if (!isText(value)) {
                                          return "Please enter valid text";
                                        }
                                        return null;
                                      },
                                      suffix: Container(
                                        margin: getMargin(
                                          left: 12,
                                          top: 12,
                                          right: 16,
                                          bottom: 12,
                                        ),
                                        child: SizedBox(),
                                      ),
                                      suffixConstraints: BoxConstraints(
                                          maxHeight: getVerticalSize(
                                            48,
                                          ),
                                          minHeight: getVerticalSize(
                                            48,
                                          )),
                                    ),
                                                                          ],)
                                  ],
                                ),
                              Padding(
                                padding: getPadding(
                                  top: 24,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomTextFormField(
                                      // focusNode: FocusNode(),
                                      controller: controller.addressLastname,
                                      hintText: "lbl_enter_last_name".tr,
                                      margin: getMargin(
                                        top: 8,
                                      ),
                                      validator: (value) {
                                        if (!isText(value)) {
                                          return "Please enter valid text";
                                        }
                                        return null;
                                      },
                                      suffix: Container(
                                        margin: getMargin(
                                          left: 12,
                                          top: 12,
                                          right: 16,
                                          bottom: 12,
                                        ),
                                        child: SizedBox(),
                                      ),
                                      suffixConstraints: BoxConstraints(
                                          maxHeight: getVerticalSize(
                                            48,
                                          ),
                                          minHeight: getVerticalSize(
                                            48,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 24,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomTextFormField(
                                      // focusNode: FocusNode(),
                                      controller: controller.addressCity,
                                      hintText: "add_new_city".tr,
                                      margin: getMargin(
                                        top: 8,
                                      ),
                                      validator: (value) {
                                        if (!isText(value)) {
                                          return "Please enter valid text";
                                        }
                                        return null;
                                      },
                                      suffix: Container(
                                        margin: getMargin(
                                          left: 12,
                                          top: 12,
                                          right: 16,
                                          bottom: 12,
                                        ),
                                        child: SizedBox(),
                                      ),
                                      suffixConstraints: BoxConstraints(
                                          maxHeight: getVerticalSize(
                                            48,
                                          ),
                                          minHeight: getVerticalSize(
                                            48,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 24,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomTextFormField(
                                      // focusNode: FocusNode(),
                                      controller: controller.addressFirst,
                                      hintText: "add_new_first".tr,
                                      margin: getMargin(
                                        top: 8,
                                      ),
                                      validator: (value) {
                                        if (!isText(value)) {
                                          return "Please enter valid text";
                                        }
                                        return null;
                                      },
                                      suffix: Container(
                                        margin: getMargin(
                                          left: 12,
                                          top: 12,
                                          right: 16,
                                          bottom: 12,
                                        ),
                                        child: SizedBox(),
                                      ),
                                      suffixConstraints: BoxConstraints(
                                          maxHeight: getVerticalSize(
                                            48,
                                          ),
                                          minHeight: getVerticalSize(
                                            48,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 24,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomTextFormField(
                                      // focusNode: FocusNode(),
                                      controller: controller.addressSecond,
                                      hintText: "add_new_second".tr,
                                      margin: getMargin(
                                        top: 8,
                                      ),
                                      validator: (value) {
                                        if (!isText(value)) {
                                          return "Please enter valid text";
                                        }
                                        return null;
                                      },
                                      suffix: Container(
                                        margin: getMargin(
                                          left: 12,
                                          top: 12,
                                          right: 16,
                                          bottom: 12,
                                        ),
                                        child: SizedBox(),
                                      ),
                                      suffixConstraints: BoxConstraints(
                                          maxHeight: getVerticalSize(
                                            48,
                                          ),
                                          minHeight: getVerticalSize(
                                            48,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 24,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    AddressDropDownButton<Country>(values: controller.countries, selectValue: (Country? country) => controller.selectCountry(country)
                                    // controller.countryId.text = country!.countryId.toString()
                                    , initialValue: controller.countries.first, hintText: "add_new_countryId".tr,),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 24,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomTextFormField(
                                      // focusNode: FocusNode(),
                                      controller: controller.postCode,
                                      hintText: "add_new_postCode".tr,
                                      margin: getMargin(
                                        top: 8,
                                      ),
                                      validator: (value) {
                                        if (!isText(value)) {
                                          return "Please enter valid text";
                                        }
                                        return null;
                                      },
                                      suffix: Container(
                                        margin: getMargin(
                                          left: 12,
                                          top: 12,
                                          right: 16,
                                          bottom: 12,
                                        ),
                                        child: SizedBox(),
                                      ),
                                      suffixConstraints: BoxConstraints(
                                          maxHeight: getVerticalSize(
                                            48,
                                          ),
                                          minHeight: getVerticalSize(
                                            48,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 24,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomTextFormField(
                                      // focusNode: FocusNode(),
                                      controller: controller.zoneId,
                                      hintText: "add_new_zone_Id".tr,
                                      margin: getMargin(
                                        top: 8,
                                      ),
                                      validator: (value) {
                                        if (!isText(value)) {
                                          return "Please enter valid text";
                                        }
                                        return null;
                                      },
                                      suffix: Container(
                                        margin: getMargin(
                                          left: 12,
                                          top: 12,
                                          right: 16,
                                          bottom: 12,
                                        ),
                                        child: SizedBox(),
                                      ),
                                      suffixConstraints: BoxConstraints(
                                          maxHeight: getVerticalSize(
                                            48,
                                          ),
                                          minHeight: getVerticalSize(
                                            48,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 24,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomTextFormField(
                                      // focusNode: FocusNode(),
                                      controller: controller.addressCompany,
                                      hintText: "add_new_company".tr,
                                      margin: getMargin(
                                        top: 8,
                                      ),
                                      validator: (value) {
                                        if (!isText(value)) {
                                          return "Please enter valid text";
                                        }
                                        return null;
                                      },
                                      suffix: Container(
                                        margin: getMargin(
                                          left: 12,
                                          top: 12,
                                          right: 16,
                                          bottom: 12,
                                        ),
                                        child: SizedBox(),
                                      ),
                                      suffixConstraints: BoxConstraints(
                                          maxHeight: getVerticalSize(
                                            48,
                                          ),
                                          minHeight: getVerticalSize(
                                            48,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              CustomButton(
                                onTap: () {
                                  controller.addNewAddress();
                                 onTapArrowleft4();
                                },
                                height: getVerticalSize(
                                  48,
                                ),
                                text: "add_new_address".tr,
                                margin: getMargin(
                                  top: 36,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
  onTapArrowleft4() {
    print('back');
    Get.back();
  }
}
