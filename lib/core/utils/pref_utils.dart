//ignore: unused_import
import 'dart:convert';
import 'dart:io';
import 'dart:ui';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/data/apiClient/api_client.dart';

class PrefUtils {
  static SharedPreferences? _sharedPreferences;

  PrefUtils() {
    SharedPreferences.getInstance().then((value) {
      _sharedPreferences = value;
    });
  }

  Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    print('SharedPreference Initialized');
  }

  ///will clear all the data stored in preference
  void clearPreferencesData() async {
    _sharedPreferences!.clear();
  }

  static String prefName = "com.shoesapp.app";
  static String isFirst = prefName + "ttsIsFirstIntro";
  static String isLogin = prefName + "ttsIsLogin";
  static String sessionId = prefName + "ttsSessionId";
  static String savedCookie = prefName + "ttsCookie";

  //Todo what is that?
  static const String languageKey = 'language_key';

  static getIsIntro() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool intValue = prefs.getBool(isFirst) ?? true;
    return intValue;
  }

  static setIsIntro(bool sizes) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(isFirst, sizes);
  }

  static getIsLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool intValue = prefs.getBool(isLogin) ?? false;
    return intValue;
  }

  static setLogin(bool login) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(isLogin, login);
  }

  static Future<String?> getSessionId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? value = prefs.getString(sessionId) ?? null;
    return value;
  }

  static setSessionId(String session) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(sessionId, session);
  }

  static Future<Cookie?> getCookie() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? value = prefs.getString(savedCookie) ?? null;
    if (value != null) {
      print("LOADED COOKIE: ${Cookie.fromSetCookieValue(value)}");
      return Cookie.fromSetCookieValue(value);
    } else {
      return null;
    }
  }

  static setCookie(Cookie cookie) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(savedCookie, cookie.toString());
    print("SET COOKIE: ${cookie.toString()}");
  }

  static Future<Locale?> onChangeLanguage(Locale locale) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(languageKey, locale.languageCode);
    String? value = prefs.getString(languageKey) ?? null;
    if (value != null) {
      print("Language: ${value}");
      return Locale(value);
    } else {
      return Locale('en', 'US');
    }
  }

  static Future<Locale?> getLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    final language = prefs.getString(languageKey);
    print(language);
    return await Locale(language ?? Get.deviceLocale!.languageCode);
  }
}
