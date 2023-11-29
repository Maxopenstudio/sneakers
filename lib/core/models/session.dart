import 'package:json_annotation/json_annotation.dart';

part 'session.g.dart';

@JsonSerializable()
class Session {
  final int success;
  final List<String> error;
  final List<String> data; // TODO: Переделать

  factory Session.fromJson(Map<String, dynamic> json) => _$SessionFromJson(json);

  Map<String, dynamic> toJson() => _$SessionToJson(this);

  bool get isSuccess => success == 1;

  String get getSession => data.first;

  String get getError => error.first;

  const Session({required this.success, required this.error, required this.data});
}
