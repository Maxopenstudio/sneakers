import 'package:json_annotation/json_annotation.dart';

part 'payment_method.g.dart';

@JsonSerializable()
class PaymentMethod {
  final String code;
  final String title;
  final String terms;
  @JsonKey(name: "sort_order")
  final String sortOrder;

  PaymentMethod(this.code, this.title, this.terms, this.sortOrder);

  factory PaymentMethod.fromJson(Map<String, dynamic> json) => _$PaymentMethodFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentMethodToJson(this);
}
