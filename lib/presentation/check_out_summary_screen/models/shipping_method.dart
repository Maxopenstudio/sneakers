import 'package:json_annotation/json_annotation.dart';

part 'shipping_method.g.dart';

@JsonSerializable()
class ShippingMethod {
  final String title;
  final String code;
  @JsonKey(fromJson: _formattedCostFromJson)
  final dynamic cost;
  @JsonKey(name: "tax_class_id", fromJson: _taxClassIdFromJson)
  final dynamic taxClassId;
  @JsonKey(name: "text")
  final String formattedCost;

  const ShippingMethod({required this.title, required this.code, required this.cost, required this.taxClassId, required this.formattedCost});

  factory ShippingMethod.fromJson(Map<String, dynamic> json) => _$ShippingMethodFromJson(json);

  Map<String, dynamic> toJson() => _$ShippingMethodToJson(this);

  static String _formattedCostFromJson(dynamic value) {
    if (value is String) {
      return value;
    } else {
      return "0.00";
    }
  }

  static String _taxClassIdFromJson(dynamic value) {
    if (value is String) {
      return value;
    } else {
      return "0";
    }
  }

  @override
  bool operator ==(Object other) => identical(this, other) || other is ShippingMethod && runtimeType == other.runtimeType && code == other.code;

  @override
  int get hashCode => code.hashCode;
}