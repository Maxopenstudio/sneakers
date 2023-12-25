import 'package:hive_flutter/adapters.dart';

import '../../../presentation/search_screen/models/search_item/search_item_model.dart';

class HiveRepository {
  HiveRepository();

  late final Box<dynamic> box;
  late final Box<SearchItemModel> searchItemBox;

  Future<void> init() async {
    _registerAdapters();
    box = await Hive.openBox('sneakers');
    searchItemBox = await Hive.openBox('search_items');
    print('boxes initialized');
  }

  // Сюда добавляем адаптеры для сохранения кастомных моделей в hive
  void _registerAdapters() {
    Hive.registerAdapter(SearchItemModelAdapter());
  }

  Future<void> saveContent(String key, dynamic value) async {
    try {
      await box.put(key, value);
      final map = box.toMap();
      print("saved: {$key : ${map[key]}}");
    } catch (error) {
      print("save error: $error");
    }
  }

  Future<dynamic> getContent(String key) async {
    try {
      await box.get(key);
      final map = box.toMap();
      return map[key];
    } catch (error) {
      print("loaded error: $error");
    }
  }

  List<SearchItemModel> getSearchItems() {
    return searchItemBox.values.toList();
  }

  void saveSearchItem(SearchItemModel model) {
    searchItemBox.add(model);
  }

  void removeSearchItem(String name) {
    searchItemBox.deleteAll(searchItemBox.keys
        .where((element) => searchItemBox.get(element)?.text == name));
  }

  void removeAllSearchItem() {
    searchItemBox.deleteAll(searchItemBox.keys);
  }
}
