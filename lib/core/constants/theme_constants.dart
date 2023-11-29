/*
Author: XamDesign
Date: 20.05.2023
*/

import 'package:flutter/material.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/constants/string_constants.dart';

final lightTheme = ThemeData(
  fontFamily: fontFamily,
  colorScheme: ColorScheme.fromSeed(seedColor: kLightBlueColor),
  useMaterial3: true,
  scaffoldBackgroundColor: kLightBackgroundColor,
  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: kWhiteColor,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: kLightBackgroundColor,
    surfaceTintColor: kLightBackgroundColor,
  ),
  inputDecorationTheme: InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 24.0,
      vertical: 16.0,
    ),
    filled: true,
    fillColor: kLightFieldColor,
    border: customOutlineInputBorder(color: kLightFieldColor),
    enabledBorder: customOutlineInputBorder(color: kLightFieldColor),
    focusedBorder: customOutlineInputBorder(color: kLightFieldColor),
    errorBorder: customOutlineInputBorder(color: kRedColor),
    errorStyle: const TextStyle(color: kRedColor, fontWeight: FontWeight.w300),
    hintStyle: const TextStyle(
      fontSize: 16,
      color: kLightTextSecondaryColor,
      fontWeight: FontWeight.w300,
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: kLightBlueColor,
  ),
  textTheme: const TextTheme(
    // Heading 1
    displayLarge: TextStyle(
      fontSize: 80,
      fontWeight: FontWeight.bold,
      color: kLightTextPrimaryColor,
    ),

    // Heading 2
    displayMedium: TextStyle(
      fontSize: 72,
      fontWeight: FontWeight.bold,
      color: kLightTextPrimaryColor,
    ),

    // Heading 3
    displaySmall: TextStyle(
      fontSize: 60,
      fontWeight: FontWeight.bold,
      color: kLightTextPrimaryColor,
    ),

    // Heading 4
    headlineLarge: TextStyle(
      fontSize: 48,
      fontWeight: FontWeight.bold,
      color: kLightTextPrimaryColor,
    ),

    // Heading 5
    headlineMedium: TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.bold,
      color: kLightTextPrimaryColor,
    ),

    // Heading 6
    headlineSmall: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: kLightTextPrimaryColor,
    ),

    // Big Title
    titleLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: kLightTextPrimaryColor,
    ),

    // Title
    titleMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: kLightTextPrimaryColor,
    ),

    // Subtitle
    titleSmall: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: kLightTextPrimaryColor,
    ),

    // Caption
    labelLarge: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: kLightTextPrimaryColor,
    ),

    // Button
    labelMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: kLightTextPrimaryColor,
    ),

    // Small Button
    labelSmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: kLightTextPrimaryColor,
    ),

    // Paragraph
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: kLightTextPrimaryColor,
    ),

    // Small Text
    bodyMedium: TextStyle(
      fontSize: 14,
      color: kLightTextPrimaryColor,
    ),
  ),
);

OutlineInputBorder customOutlineInputBorder({
  required Color color,
  double borderRadius = 48.0,
}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(borderRadius),
    borderSide: BorderSide(color: color),
  );
}

final darkTheme = ThemeData(
  fontFamily: fontFamily,
  colorScheme: ColorScheme.fromSeed(seedColor: kLightBlueColor),
  useMaterial3: true,
  scaffoldBackgroundColor: kDarkBackgroundColor,
  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: kDarkBackgroundColor,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: kDarkBackgroundColor,
    surfaceTintColor: kDarkBackgroundColor,
  ),
  inputDecorationTheme: InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 24.0,
      vertical: 16.0,
    ),
    filled: true,
    fillColor: kDarkFieldColor,
    border: customOutlineInputBorder(color: kDarkFieldColor),
    enabledBorder: customOutlineInputBorder(color: kDarkFieldColor),
    focusedBorder: customOutlineInputBorder(color: kDarkFieldColor),
    errorBorder: customOutlineInputBorder(color: kRedColor),
    errorStyle: const TextStyle(color: kRedColor, fontWeight: FontWeight.w300),
    hintStyle: const TextStyle(
      fontSize: 16,
      color: kLightTextSecondaryColor,
      fontWeight: FontWeight.w300,
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: kLightBlueColor,
  ),
  textTheme: const TextTheme(
    // Heading 1
    displayLarge: TextStyle(
      fontSize: 80,
      fontWeight: FontWeight.bold,
      color: kDarkTextColor,
    ),

    // Heading 2
    displayMedium: TextStyle(
      fontSize: 72,
      fontWeight: FontWeight.bold,
      color: kDarkTextColor,
    ),

    // Heading 3
    displaySmall: TextStyle(
      fontSize: 60,
      fontWeight: FontWeight.bold,
      color: kDarkTextColor,
    ),

    // Heading 4
    headlineLarge: TextStyle(
      fontSize: 48,
      fontWeight: FontWeight.bold,
      color: kDarkTextColor,
    ),

    // Heading 5
    headlineMedium: TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.bold,
      color: kDarkTextColor,
    ),

    // Heading 6
    headlineSmall: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: kDarkTextColor,
    ),

    // Big Title
    titleLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: kDarkTextColor,
    ),

    // Title
    titleMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: kDarkTextColor,
    ),

    // Subtitle
    titleSmall: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: kDarkTextColor,
    ),

    // Caption
    labelLarge: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: kDarkTextColor,
    ),

    // Button
    labelMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: kDarkTextColor,
    ),

    // Small Button
    labelSmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: kDarkTextColor,
    ),

    // Paragraph
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: kDarkTextColor,
    ),

    // Small Text
    bodyMedium: TextStyle(
      fontSize: 14,
      color: kDarkTextColor,
    ),
  ),
);
