import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StateController extends GetxController {
  // for tab view
  final RxInt activeIndexOnOffButton = 0.obs;
  final RxInt activeIndexGridViewButton = 0.obs;

  void updateOnOffButtonActiveIndex(int index) {
    activeIndexOnOffButton(index);
    // print(activeIndex.value);
  }

  void updateGridViewButtonActiveIndex(int index) {
    activeIndexGridViewButton(index);
    // print(activeIndex.value);
  }

  // controllers
  final TextEditingController searchBarEditingController =
      TextEditingController();
}
