import 'package:json_annotation/json_annotation.dart';

part 'product_options_value.g.dart';

@JsonSerializable()
class ProductOptionsValue {
  final String? image;
  final double price;
  @JsonKey(name: "price_formated")
  final String priceFormated;
  @JsonKey(name: "product_option_value_id")
  final int productOptionValueId;
  @JsonKey(name: "option_value_id")
  final int optionValueId;
  final String name;
  final String quantity;

  const ProductOptionsValue({required this.image, required this.price, required this.priceFormated, required this.productOptionValueId, required this.optionValueId, required this.name, required this.quantity});

  factory ProductOptionsValue.fromJson(Map<String, dynamic> json) => _$ProductOptionsValueFromJson(json);

  Map<String, dynamic> toJson() => _$ProductOptionsValueToJson(this);
}