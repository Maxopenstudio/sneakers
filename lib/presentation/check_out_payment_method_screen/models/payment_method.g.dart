// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentMethod _$PaymentMethodFromJson(Map<String, dynamic> json) =>
    PaymentMethod(
      json['code'] as String,
      json['title'] as String,
      json['terms'] as String,
      json['sort_order'] as String,
    );

Map<String, dynamic> _$PaymentMethodToJson(PaymentMethod instance) =>
    <String, dynamic>{
      'code': instance.code,
      'title': instance.title,
      'terms': instance.terms,
      'sort_order': instance.sortOrder,
    };
