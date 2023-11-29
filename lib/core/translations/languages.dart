/*
Author: XamDesign
Date: 14.06.2023
*/

import 'package:get/get.dart';
import 'package:xam_shoes_app/core/translations/langs/ar.dart';
import 'package:xam_shoes_app/core/translations/langs/en.dart';
import 'package:xam_shoes_app/core/translations/langs/es.dart';
import 'package:xam_shoes_app/core/translations/langs/hi.dart';
import 'package:xam_shoes_app/core/translations/langs/pt.dart';
import 'package:xam_shoes_app/core/translations/langs/ru.dart';
import 'package:xam_shoes_app/core/translations/langs/tr.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "en_US": enTranslations,
        "tr_TR": trTranslations,
        "ru_RU": ruTranslations,
        "pt_BR": ptTranslations,
        "pt_PT": ptTranslations,
        "es_ES": esTranslations,
        "es_MX": esTranslations,
        "ar_AR": arTranslations,
        "hi_IN": hiTranslations,
      };
}
