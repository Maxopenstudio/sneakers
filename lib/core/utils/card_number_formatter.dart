/*
Author: XamDesign
Date: 8.06.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CardNumberFormatter extends TextInputFormatter {
  final String separator;

  CardNumberFormatter({this.separator = " "});

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final oldS = oldValue.text;
    final newS = newValue.text;
    var endsWithSeparator = false;

    if (newS.length > oldS.length) {
      if (newS.substring(0, newS.length - 1).endsWith(separator)) {
        endsWithSeparator = true;
      }
      final clean = newS.replaceAll(separator, '');
      if (!endsWithSeparator && clean.length > 1 && clean.length % 4 == 1) {
        return newValue.copyWith(
          text: newS.substring(0, newS.length - 1) +
              separator +
              newS.characters.last,
          selection: TextSelection.collapsed(
            offset: newValue.selection.end + separator.length,
          ),
        );
      }
    }

    if (newS.length < oldS.length) {
      for (final char in separator.characters) {
        if (oldS.substring(0, oldS.length - 1).endsWith(char)) {
          endsWithSeparator = true;
        }
      }
      final clean =
          oldS.substring(0, oldS.length - 1).replaceAll(separator, '');
      if (endsWithSeparator && clean.isNotEmpty && clean.length % 4 == 0) {
        return newValue.copyWith(
          text: newS.substring(0, newS.length - separator.length).trim(),
          selection: TextSelection.collapsed(
            offset: newValue.selection.end - separator.length,
          ),
        );
      }
    }

    return newValue;
  }
}
