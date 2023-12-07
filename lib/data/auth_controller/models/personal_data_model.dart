import 'package:json_annotation/json_annotation.dart';

part "personal_data_model.g.dart";

@JsonSerializable()
class PersonalDataModel {
  final String firstname;
  final String lastname;
  final String email;
  final String telephone;
  @JsonKey(name: "tax_id")
  final int taxId;
  @JsonKey(name: "customer_id")
  final int customerId;

  PersonalDataModel({required this.firstname, required this.lastname, required this.email, required this.telephone, required this.taxId, required this.customerId});

  factory PersonalDataModel.fromJson(Map<String, dynamic> json) => _$PersonalDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$PersonalDataModelToJson(this);
}