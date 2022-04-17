import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  var allitem = [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png',
    'assets/images/4.png',
    'assets/images/5.png',
    'assets/images/6.png',
    'assets/images/7.png',
    'assets/images/8.png',
    'assets/images/9.png',
    'assets/images/10.png',
    'assets/images/11.png',
    'assets/images/12.png',
    'assets/images/13.png',
    'assets/images/14.png',
    'assets/images/15.png',
    'assets/images/16.png',
    'assets/images/17.png',
    'assets/images/18.png',
    'assets/images/19.png',
    'assets/images/20.png',
  ];

  ScrollController scrollController = ScrollController();

  @override
  void onInit() {
    // TODO: implement onInit
    scrollController = ScrollController();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    scrollController.dispose();
    super.onClose();
  }
}
