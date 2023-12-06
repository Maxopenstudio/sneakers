import 'package:json_annotation/json_annotation.dart';
import 'package:shoes_app/presentation/home_screen_page/models/product_options_value.dart';

part 'product_options.g.dart';

@JsonSerializable()
class ProductOptions {
  @JsonKey(name: "product_option_id")
  final int productOptionId;
  @JsonKey(name: "option_value")
  final List<ProductOptionsValue> optionValue;

  const ProductOptions({required this.productOptionId, required this.optionValue});

  factory ProductOptions.fromJson(Map<String, dynamic> json) => _$ProductOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$ProductOptionsToJson(this);
}