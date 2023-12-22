import 'package:hive/hive.dart';

part  'search_item_model.g.dart';

@HiveType(typeId: 1)
class SearchItemModel {
  @HiveField(0)
  final String text;
  @HiveField(1)
  final DateTime time;

  SearchItemModel({required this.text, required this.time});
}
