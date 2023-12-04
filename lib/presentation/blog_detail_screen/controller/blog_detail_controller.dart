import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/blog_detail_screen/models/blog_detail_model.dart';

class BlogDetailController extends GetxController {
  Rx<BlogDetailModel> blogDetailModelObj = BlogDetailModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
