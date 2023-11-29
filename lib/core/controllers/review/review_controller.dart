/*
Author: XamDesign
Date: 8.06.2023
*/

import 'package:get/get.dart';

class ReviewController extends GetxController {
  RxInt rating = (-1).obs;

  void changeRating(int index) {
    rating.value = index;
  }

  void reset() {
    rating.value = -1;
  }
}
