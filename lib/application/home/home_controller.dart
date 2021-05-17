import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt bottomSelectedIndex = 0.obs;
  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );
  void pageChanged(int index) {
    bottomSelectedIndex.value = index;
    update();
  }

  void onBottomTap(int index) {
    pageController.jumpToPage(index);
    update();
  }

  PageController get getPageController => this.pageController;
  int get getSelectedIndex => this.bottomSelectedIndex.value;
}
