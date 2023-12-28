import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import '../models/select_address_model.dart';

class AddressDropDownButton<T extends Named> extends StatefulWidget {
  const AddressDropDownButton(
      {Key? key,
      required this.values,
      required this.selectValue,
      required this.initialValue,
      required this.hintText})
      : super(key: key);
  final List<T> values;
  final Function(T?) selectValue;
  final T? initialValue;
  final String hintText;

  @override
  State<AddressDropDownButton> createState() =>
      _AddressDropDownButtonState<T>();
}

class _AddressDropDownButtonState<T extends Named>
    extends State<AddressDropDownButton<T>> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      decoration: BoxDecoration(
        color: ColorConstant.blueGray50,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: DropdownMenu<T?>(
        textStyle: TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'SF UI Text',
          fontWeight: FontWeight.w400,
        ),
        expandedInsets: const EdgeInsets.all(0),
        hintText: widget.hintText,
        inputDecorationTheme: InputDecorationTheme(
          isDense: true,
          border: const OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.transparent),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.transparent),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          disabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.transparent),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.transparent),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintStyle: TextStyle(
            color: ColorConstant.gray600,
            fontSize: getFontSize(
              16,
            ),
            fontFamily: 'SF UI Text',
            fontWeight: FontWeight.w400,
          ),
        ),
        menuStyle: MenuStyle(
            maximumSize: MaterialStateProperty.all<Size?>(
              Size(
                double.infinity,
                MediaQuery.of(context).size.height / 3,
              ),
            ),
            backgroundColor:
                const MaterialStatePropertyAll<Color>(Colors.white),
            surfaceTintColor:
                const MaterialStatePropertyAll<Color>(Colors.grey),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)))),
        onSelected: (T? value) {
          widget.selectValue(value);
        },
        dropdownMenuEntries: widget.values.map<DropdownMenuEntry<T>>(
          (T icon) {
            return DropdownMenuEntry<T>(
              style: ButtonStyle(
                  textStyle: MaterialStatePropertyAll(TextStyle(
                color: ColorConstant.black900,
                fontSize: getFontSize(
                  16,
                ),
                fontFamily: 'SF UI Text',
                fontWeight: FontWeight.w400,
              ))),
              value: icon,
              label: icon.named,
            );
          },
        ).toList(),
      ),
    );
  }
}
