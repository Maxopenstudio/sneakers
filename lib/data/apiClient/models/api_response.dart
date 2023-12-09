import 'package:json_annotation/json_annotation.dart';

part 'api_response.g.dart';

@JsonSerializable()
class ApiResponse {
  final int success;
  final dynamic error;
  final dynamic data;

  const ApiResponse({required this.success, required this.error, required this.data});

  bool get isSuccess => success == 1;

  factory ApiResponse.fromJson(Map<String, dynamic> json) => _$ApiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiResponseToJson(this);
}
