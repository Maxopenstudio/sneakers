/*
Author: XamDesign
Date: 8.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/ui/views/cards/components/cards_card_holder_field.dart';
import 'package:xam_shoes_app/ui/views/cards/components/cards_card_number_field.dart';
import 'package:xam_shoes_app/ui/views/cards/components/cards_done_button.dart';

class CardsForm extends StatefulWidget {
  const CardsForm({
    super.key,
  });

  @override
  State<CardsForm> createState() => _CardsFormState();
}

class _CardsFormState extends State<CardsForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
      ),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            const CardsCardNumberField(),
            const CardsCardHolderField(),
            CardsDoneButton(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  Get
                    ..back()
                    ..showSnackbar(
                      GetSnackBar(
                        message: TranslationKeys.changesSavedSuccessfully.tr,
                        duration: const Duration(seconds: 3),
                      ),
                    );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
