import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/password_changed_dialog/models/password_changed_model.dart';

class PasswordChangedController extends GetxController {
  Rx<PasswordChangedModel> passwordChangedModelObj = PasswordChangedModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
