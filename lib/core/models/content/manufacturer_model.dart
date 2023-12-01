import 'package:json_annotation/json_annotation.dart';

part 'manufacturer_model.g.dart';

@JsonSerializable()
class Manufacturer {
  final int manufacturer_id;
  final String name;
  final String? image;
  final String original_image;

  const Manufacturer({required this.manufacturer_id, required this.name, required this.image, required this.original_image});

  factory Manufacturer.fromJson(Map<String, dynamic> json) => _$ManufacturerFromJson(json);

  Map<String, dynamic> toJson() => _$ManufacturerToJson(this);
}
