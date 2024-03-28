import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/data/apiClient/api_client.dart';
import 'package:shoes_app/presentation/search_screen/models/popular_product.dart';
import 'package:shoes_app/presentation/search_screen/models/search_item/search_item_model.dart';

import '../../../core/storage/repositories/hive_repository.dart';
import '../../home_screen_page/models/product_model.dart';
import '../models/search_result_item.dart';

class SearchProductController extends GetxController {
  SearchProductController(this.apiClient, this.hiveRepository);

  final ApiClient apiClient;

  final HiveRepository hiveRepository;

  TextEditingController groupFiftySixController = TextEditingController();
  FocusNode focusNode = FocusNode();
  Timer? _searchDelayTimer;
  String? _prev;

  RxList<SearchItemModel> searchItemList = RxList<SearchItemModel>();
  RxList<ProductModel> searchResults = RxList<ProductModel>();
  RxList<PopularProduct> popularResults = RxList<PopularProduct>();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onInit() async {
    super.onInit();
    final popular = await apiClient.fetchPopularProducts(4);
    popularResults = [...?popular].obs;
    groupFiftySixController.addListener(() => onSearchChanged());

    updateSearchItems();
    update();
  }

  void updateSearchItems() {
    final values = hiveRepository.getSearchItems().toSet().toList().reversed;
    searchItemList.clear();
    searchItemList.addAll(values);
    update();
    searchItemList.refresh();
    update();
  }

  void removeSearchItemModel(SearchItemModel model) {
    hiveRepository.removeSearchItem(model.text);
    updateSearchItems();
  }

  void removeAllSearchItemModel() {
    hiveRepository.removeAllSearchItem();
    searchItemList.clear();
  }

  void search(String text) async {
    final results = await apiClient.fetchProductBySearch(text);
    searchResults.clear();
    searchResults.addAll(results ?? []);
    hiveRepository
        .saveSearchItem(SearchItemModel(text: text, time: DateTime.now()));
    updateSearchItems();
  }

  void clear() {
    searchResults.clear();
    groupFiftySixController.text = '';
  }

  void onSearchChanged() {
    _searchDelayTimer?.cancel();

    // Start a new timer for 2 seconds
    _searchDelayTimer = Timer(Duration(seconds: 1), () {
      if (groupFiftySixController.text.isNotEmpty &&
          groupFiftySixController.text != _prev) {
        _prev = groupFiftySixController.text;
        search(groupFiftySixController.text);

      }
    });
  }

  @override
  void onClose() {
    groupFiftySixController.dispose();
    _searchDelayTimer?.cancel();
    focusNode.dispose();
    super.onClose();
  }
}

