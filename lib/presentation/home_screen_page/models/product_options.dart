import 'package:json_annotation/json_annotation.dart';

part 'product_options.g.dart';

@JsonSerializable()
class ProductOptions {
  @JsonKey(name: "product_option_id")
  final String productOptionId;
  @JsonKey(name: "option_value")
  final  optionValue;

  const ProductOptions({required this.productOptionId, required this.optionValue});

  factory ProductOptions.fromJson(Map<String, dynamic> json) => _$ProductOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$ProductOptionsToJson(this);
}