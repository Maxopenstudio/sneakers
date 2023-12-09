// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonalDataModel _$PersonalDataModelFromJson(Map<String, dynamic> json) =>
    PersonalDataModel(
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      email: json['email'] as String,
      telephone: json['telephone'] as String,
      customerId: json['customer_id'] as int,
    );

Map<String, dynamic> _$PersonalDataModelToJson(PersonalDataModel instance) =>
    <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'email': instance.email,
      'telephone': instance.telephone,
      'customer_id': instance.customerId,
    };
