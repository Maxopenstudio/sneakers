import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/register_error_one_screen/models/register_error_one_model.dart';

class RegisterErrorOneController extends GetxController {
  TextEditingController groupFiftyFourController = TextEditingController();

  TextEditingController groupFiftyFiveController = TextEditingController();

  TextEditingController groupFiftySixController = TextEditingController();

  TextEditingController groupFiftySevenController = TextEditingController();

  TextEditingController groupFiftyEightController = TextEditingController();

  Rx<RegisterErrorOneModel> registerErrorOneModelObj = RegisterErrorOneModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupFiftyFourController.dispose();
    groupFiftyFiveController.dispose();
    groupFiftySixController.dispose();
    groupFiftySevenController.dispose();
    groupFiftyEightController.dispose();
  }
}
