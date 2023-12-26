import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/privacy_policy_screen/models/privacy_policy_model.dart';
import 'package:html/parser.dart' as htmlParser;
import 'package:html/parser.dart';

class TermsConditionController extends GetxController {
  RxList<PrivacyPolicyModel> termsAndPolicyData =
      List<PrivacyPolicyModel>.empty().obs;

  String? get title {
    final listData =
    termsAndPolicyData.where((element) => element.type == 0).toList();
    return termsAndPolicyData.isEmpty ? "" : listData.first.title;
  }

  String? get description {
    final listData =
    termsAndPolicyData.where((element) => element.type == 0).toList();
    return  termsAndPolicyData.isEmpty ? "" : parseHtml(listData.first.description);
  }
  String parseHtml(String htmlString) {
    var document = htmlParser.parse(htmlString);
    return parse(document.body!.text).documentElement!.text;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}