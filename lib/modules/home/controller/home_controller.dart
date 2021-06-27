import 'package:flutter/material.dart';

class HomeController {
  PageController _pageController = PageController(initialPage: 0);
  PageController get pageController => _pageController;
  void setPage(int index) {
    _pageController.jumpToPage(index);
  }
}
