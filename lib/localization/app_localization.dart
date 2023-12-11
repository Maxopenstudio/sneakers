import 'package:get/get.dart';
import 'package:shoes_app/localization/uk_ua/uk_ua_translation.dart';

import 'en_us/en_us_translations.dart';

class AppLocalization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {'en_US': enUs, 'uk_UA': ukUa};
}
